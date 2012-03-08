/*
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#ifndef UBMEDIAWIDGET_H
#define UBMEDIAWIDGET_H

#include <QWidget>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QLabel>
#include <QSlider>
#include <QMouseEvent>
#include <QLineEdit>

#include <phonon/MediaObject>
#include <phonon/VideoWidget>
#include <phonon/AudioOutput>

#include "interfaces/IResizeable.h"
#include "UBActionableWidget.h"

#define UBMEDIABUTTON_SIZE              32
#define TICK_INTERVAL                   1000
#define UBTOGGLER_SIZE                  32

/**
  * \brief The media type
  */
typedef enum{
    eMediaType_Video,
    eMediaType_Audio,
    eMediaType_Picture,
    eMediaType_App,
    eMediaType_Flash
}eMediaType;

typedef enum{
    eVizualisationMode_Edit,
    eVizualisationMode_Half,
    eVizualisationMode_Full
}eVizualisationMode;

class UBMediaExpander : public QWidget
{
    Q_OBJECT
public:
    UBMediaExpander(QWidget* parent=0, const char* name="UBMediaExpander");
    ~UBMediaExpander();
    bool isExpanded(){return mExpanded;}

signals:
    void toggleMedias();

protected:
    void mousePressEvent(QMouseEvent* ev);

private slots:
    void onToggleMedias();

private:
    QHBoxLayout* mpLayout;
    QLabel* mpButton;
    bool mExpanded;
};

class UBMediaButton : public QLabel
{
    Q_OBJECT
public:
    UBMediaButton(QWidget* parent=0, const char* name="UBMediaButton");
    ~UBMediaButton();

signals:
    void clicked();

protected:
    void mousePressEvent(QMouseEvent* ev);
    void mouseReleaseEvent(QMouseEvent* ev);

private:
    /** And indicator of the press event in progress */
    bool mPressed;
};

class UBMediaTitle : public QWidget
{
    Q_OBJECT
public:
    UBMediaTitle(eMediaType type, QWidget* parent=0, const char* name="UBMediaTitle");
    ~UBMediaTitle();
    void setTitle(const QString& title);

protected:
    // Todo: overload the onhover method to make the addtopage & playfullscreen buttons visible

private slots:
    void onAddToPage();
    void onPlayFullscreen();

private:
    QHBoxLayout* mpLayout;
    QLabel* mpIcon;
    QLabel* mpTitle;
    QPushButton* mpAddToPageButton;
    QPushButton* mpPlayFullscreenButton;
};

class UBMediaWidget : public UBActionableWidget
{
    Q_OBJECT
public:
    UBMediaWidget(eMediaType type = eMediaType_Video, QWidget* parent=0, const char* name="UBMediaWidget");
    ~UBMediaWidget();
    void setFile(const QString& filePath);
    eMediaType mediaType();
    int border();
    void setAudioCover(const QString& coverPath);
    void setUrl(const QString& url){mUrl = url;}
    QString url(){return mUrl;}
    void setTitle(const QString& title){mpTitle->setText(title); mpPreviewTitle->setTitle(title);}
    QString title(){return mpTitle->text();}
    void createMediaPlayer();
    void setVizualisationMode(eVizualisationMode mode);

protected:
    void resizeEvent(QResizeEvent* ev);
    void showEvent(QShowEvent* event);
    /** The current media file path */
    QString mFilePath;
    /** The media title */
    QString mTitle;

private slots:
    void onPlayStopClicked();
    void onPauseClicked();
    void onStateChanged(Phonon::State newState, Phonon::State oldState);
    void onTotalTimeChanged(qint64 total);
    void onTick(qint64 currentTime);
    void onSliderChanged(int value);

private:
    void adaptSizeToVideo();

    /** The current media type */
    eMediaType mType;
    /** The media object */
    Phonon::MediaObject* mpMediaObject;
    /** The video renderer */
    Phonon::VideoWidget* mpVideoWidget;
    /** The audio renderer */
    Phonon::AudioOutput* mpAudioOutput;
    /** The principal layout of this widget */
    QVBoxLayout mLayout;
    /** The seeker layout */
    QHBoxLayout mSeekerLayout;
    /** The play-stop button */
    UBMediaButton* mpPlayStopButton;
    /** The pause button */
    UBMediaButton* mpPauseButton;
    /** The seeker slider */
    QSlider* mpSlider;
    /** An indicator of the seeker auto update in progress */
    bool mAutoUpdate;
    /** An indicator of the thumbnail generation in progress */
    bool mGeneratingThumbnail;
    /** The border */
    int mBorder;
    /** A widget that will contain the media */
    QWidget* mpMediaContainer;
    /** The media layout */
    QHBoxLayout mMediaLayout;
    /** The audio cover */
    QLabel* mpCover;
    /** The media url */
    QString mUrl;
    /** The title label */
    QLabel* mpTitleLabel;
    /** The title */
    QLineEdit* mpTitle;
    /** The label that will display the picture */
    QLabel* mpPicture;
    /** The title that will be visible in preview mode */
    UBMediaTitle* mpPreviewTitle;
    /** The vizualisation mode */
    eVizualisationMode mVizMode;
};

#endif // UBMEDIAWIDGET_H
