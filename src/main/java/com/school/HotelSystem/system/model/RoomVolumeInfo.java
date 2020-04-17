package com.school.HotelSystem.system.model;

public class RoomVolumeInfo {
    private String roomType;

	private Long roomVolume;

	private Long roomInVolume;

	private Long roomBookVolume;

	private Double roomPice;

	private String roomPicture;

	private String roomIntro;

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public Long getRoomVolume() {
		return roomVolume;
	}

	public void setRoomVolume(Long roomVolume) {
		this.roomVolume = roomVolume;
	}

	public Long getRoomInVolume() {
		return roomInVolume;
	}

	public void setRoomInVolume(Long roomInVolume) {
		this.roomInVolume = roomInVolume;
	}

	public Long getRoomBookVolume() {
		return roomBookVolume;
	}

	public void setRoomBookVolume(Long roomBookVolume) {
		this.roomBookVolume = roomBookVolume;
	}

	public Double getRoomPice() {
		return roomPice;
	}

	public void setRoomPice(Double roomPice) {
		this.roomPice = roomPice;
	}

	public String getRoomPicture() {
		return roomPicture;
	}

	public void setRoomPicture(String roomPicture) {
		this.roomPicture = roomPicture;
	}

	public String getRoomIntro() {
		return roomIntro;
	}

	public void setRoomIntro(String roomIntro) {
		this.roomIntro = roomIntro;
	}

	@Override
	public String toString() {
		return "RoomVolumeInfo [roomType=" + roomType + ", roomVolume=" + roomVolume + ", roomInVolume=" + roomInVolume
				+ ", roomBookVolume=" + roomBookVolume + ", roomPice=" + roomPice + ", roomPicture=" + roomPicture
				+ ", roomIntro=" + roomIntro + "]";
	}

	
}