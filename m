Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B03339E7
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 23:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nag18wHb8n7+lBqGkVFzpqTN8D3JdCMDTqgTiOq6OnI=; b=URnSrN1OZT3zt4
	aPAaRLPKU3GL894MzwIxsx0N7QEBAosWLCICba5dyfJuSiMjBS7D+koeOZU5jfP840wfV4wGzA/iK
	/nyxEoggA53WSIB83DXWMQU2zdQKdIH9ffGFEK7HoibfM8SHpeI6MTbwE8pmMEvBg1fExekkJP0vz
	VbFBZoO1J/iJOUlVHoWGTVHBZH5eeQDs4eC6UVT5Frnm5KVPQt9TZyShLFVg7hc/+XiNsPpLkBNTV
	u22fTWv9M9XgvDaizJK4q3V+Vu4xkShYiEHlSlouTE/9gwgYO0liVfJ1gXnD+m7y2QJ5n2R6Qckoh
	PNvQ0LIUW7VfIFr+7RBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuX4-0000Ha-Da; Mon, 03 Jun 2019 21:30:18 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuWy-0000HB-P8
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 21:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559597413; x=1591133413;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=cUBKqYd1crw+lfzfRZIE7MwISEXgg9CaIwcGlOD3hms=;
 b=ZSZmk3mjzWrkkjOrmxjn4kWJw2oNs1tQSlqBd/X+LOD8UqFrsNGlmDZC
 xSXZ41T8S3VAqOoTm2dD+TXfAPSIrCYW+clzmB6c8l8+WbYITsLMcGhE7
 wEbvoG44rOLEAieO07rAazCj+ZaptrdgytNVMLN0Jirqk7Ap8HEI8lTsu
 AUPXHH2opk6cOmo1cQcqb/uSDb+xSNQOsnKk7z75mPxAHZl9whBX5zQCS
 pzrWHNPiKEh0kkOyo+1dOhmmnOUjw7lBR8M6ZoLZTOndpSN38O7ungGst
 DiyHdZM5BgPMYJ6jR8oBnFqRpFY5b76AGojNA1FvXK0rdkO3pmsNoTmva A==;
X-IronPort-AV: E=Sophos;i="5.60,548,1549900800"; d="scan'208";a="111377253"
Received: from mail-by2nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.58])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 05:30:10 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUBKqYd1crw+lfzfRZIE7MwISEXgg9CaIwcGlOD3hms=;
 b=fOIMCBQOHDboxmUSm0kd2JO7ko8uqErgtRvmnsKtUiHI6HEx/ikiLDVTU9qchbfxeynSv33wT0NnLOpceQ9l0X5DQBNfOwBLm6VWY4g8aMT5+Uh0XqK4LZ9bo+wnjgg0yG0LA2OdsIwkxb8LJupL1rjfLFoGoA694Gyj3Wpbluc=
Received: from DM6PR04MB5900.namprd04.prod.outlook.com (20.179.49.138) by
 DM6PR04MB4491.namprd04.prod.outlook.com (20.176.105.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 21:30:08 +0000
Received: from DM6PR04MB5900.namprd04.prod.outlook.com
 ([fe80::7962:f5f7:d104:f1f0]) by DM6PR04MB5900.namprd04.prod.outlook.com
 ([fe80::7962:f5f7:d104:f1f0%6]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 21:30:08 +0000
From: Jeffrey Lien <Jeff.Lien@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: [PATCH] Add support for 64 bit addresses in Get DUI Data functions
Thread-Topic: [PATCH] Add support for 64 bit addresses in Get DUI Data
 functions
Thread-Index: AQHVGlOE1Za6iLobw0igzA9VCCXA5w==
Date: Mon, 3 Jun 2019 21:30:08 +0000
Message-ID: <1559597395-26582-1-git-send-email-jeff.lien@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM5PR0102CA0004.prod.exchangelabs.com (2603:10b6:4:9c::17)
 To DM6PR04MB5900.namprd04.prod.outlook.com
 (2603:10b6:5:166::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jeff.Lien@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1253792-f9c8-41c1-c824-08d6e86aa6ef
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB4491; 
x-ms-traffictypediagnostic: DM6PR04MB4491:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB449183F278C76DAD8A990031EA140@DM6PR04MB4491.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:419;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39860400002)(376002)(346002)(396003)(366004)(199004)(189003)(2501003)(6512007)(26005)(4326008)(5640700003)(7736002)(2906002)(305945005)(186003)(71200400001)(71190400001)(2351001)(8936002)(25786009)(50226002)(81156014)(476003)(256004)(486006)(8676002)(36756003)(2616005)(86362001)(5660300002)(72206003)(386003)(6506007)(478600001)(81166006)(53936002)(316002)(66066001)(14454004)(102836004)(73956011)(66476007)(66556008)(64756008)(66446008)(52116002)(68736007)(6916009)(99286004)(66946007)(6116002)(6486002)(3846002)(6436002)(4720700003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4491;
 H:DM6PR04MB5900.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HQht3K2DE77lI77ljJA5aBZSsdYLI68/jjBfoXZugjRJ0DbYSN8qy3XYs26BGuDLdOdrdjQDgpzFyZCHidl7WmQl6MtgM8hDoAfDsyBb1/Ym4Fm7cKiS6ybZt5WDzz5LR7kexWDjnNBZXZJUUPy+KwkOLx6WXOIMyV+KcG44jx89z9ELNe8z2fq5Neeeu/VaQrYM6Fb8HB2GqynhCYiR1rmC4XgmwPJyWhrGGd413WDSACFvzRw02GTEDSfTqR1VPlJ57RoTaGGu/JYXw6ui+xp4fZgNvdkoiZsVTLKRhPHqEl6V5K+MFyEVILjpNjSWRTkq03g04MggYk9Y9sLAI2m5b5nw1hkwly1gAmDmY8W6/8AbcHUaZckGKHC3T0uFjF45EEfx2Ap4x5kPDwQaxmgNXAde9KMpcizOnGeiw80=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1253792-f9c8-41c1-c824-08d6e86aa6ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 21:30:08.6522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jeff.Lien@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4491
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_143012_938874_9BEFF4FF 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jeffrey Lien <Jeff.Lien@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Jeff Lien <jeff.lien@wdc.com>
---
 plugins/wdc/wdc-nvme.c | 223 +++++++++++++++++++++++++++++++++++++------------
 1 file changed, 170 insertions(+), 53 deletions(-)

diff --git a/plugins/wdc/wdc-nvme.c b/plugins/wdc/wdc-nvme.c
index a1cb1eb..d122c16 100644
--- a/plugins/wdc/wdc-nvme.c
+++ b/plugins/wdc/wdc-nvme.c
@@ -129,6 +129,7 @@
 #define WDC_NVME_CAP_DUI_OPCODE				0xFA
 #define WDC_NVME_CAP_DUI_DISABLE_IO         0x01
 #define WDC_NVME_DUI_MAX_SECTION			0x3A
+#define WDC_NVME_DUI_MAX_SECTION_V2			0x26
 #define WDC_NVME_DUI_MAX_DATA_AREA			0x05
 
 /* Crash dump */
@@ -453,15 +454,31 @@ struct wdc_dui_log_section {
 	__le32	section_size;
 };
 
+/* DUI log header V2 */
+struct __attribute__((__packed__)) wdc_dui_log_section_v2 {
+	__le16	section_type;
+	__le16	data_area_id;
+	__le64	section_size;
+};
+
 struct wdc_dui_log_hdr {
 	__u8    telemetry_hdr[512];
 	__le16	hdr_version;
 	__le16	section_count;
-	__u8	log_size[4];
+	__le32	log_size;
 	struct	wdc_dui_log_section log_section[WDC_NVME_DUI_MAX_SECTION];
 	__u8    log_data[40];
 };
 
+struct __attribute__((__packed__)) wdc_dui_log_hdr_v2 {
+	__u8    telemetry_hdr[512];
+	__le16	hdr_version;
+	__le16	section_count;
+	__le64	log_size;
+	struct	wdc_dui_log_section_v2 log_section[WDC_NVME_DUI_MAX_SECTION_V2];
+	__u8    log_data[40];
+};
+
 /* Purge monitor response */
 struct wdc_nvme_purge_monitor_data {
 	__le16 	rsvd1;
@@ -1081,7 +1098,34 @@ static __u32 wdc_dump_dui_data(int fd, __u32 dataLen, __u32 offset, __u8 *dump_d
 
 	ret = nvme_submit_passthru(fd, NVME_IOCTL_ADMIN_CMD, &admin_cmd);
 	if (ret != 0) {
-		fprintf(stderr, "ERROR : WDC : reading DUI length failed\n");
+		fprintf(stderr, "ERROR : WDC : reading DUI data failed\n");
+		fprintf(stderr, "NVMe Status:%s(%x)\n", nvme_status_to_string(ret), ret);
+	}
+
+	return ret;
+}
+
+static __u32 wdc_dump_dui_data_v2(int fd, __u32 dataLen, __u64 offset, __u8 *dump_data, bool last_xfer)
+{
+	int ret;
+	struct nvme_admin_cmd admin_cmd;
+
+	memset(&admin_cmd, 0, sizeof (struct nvme_admin_cmd));
+	admin_cmd.opcode = WDC_NVME_CAP_DUI_OPCODE;
+	admin_cmd.nsid = 0xFFFFFFFF;
+	admin_cmd.addr = (__u64)(uintptr_t)dump_data;
+	admin_cmd.data_len = dataLen;
+	admin_cmd.cdw10 = ((dataLen >> 2) - 1);
+	admin_cmd.cdw12 = (__u32)(offset & 0x00000000FFFFFFFF);
+	admin_cmd.cdw13 = (__u32)(offset >> 32);
+	if (last_xfer)
+		admin_cmd.cdw14 = 0;
+	else
+		admin_cmd.cdw14 = WDC_NVME_CAP_DUI_DISABLE_IO;
+
+	ret = nvme_submit_passthru(fd, NVME_IOCTL_ADMIN_CMD, &admin_cmd);
+	if (ret != 0) {
+		fprintf(stderr, "ERROR : WDC : reading DUI data V2 failed\n");
 		fprintf(stderr, "NVMe Status:%s(%x)\n", nvme_status_to_string(ret), ret);
 	}
 
@@ -1256,18 +1300,18 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 	int ret = 0;
 	__u32 dui_log_hdr_size = WDC_NVME_CAP_DUI_HEADER_SIZE;
 	struct wdc_dui_log_hdr *log_hdr;
+	struct wdc_dui_log_hdr_v2 *log_hdr_v2;
 	__u32 cap_dui_length;
-	__u8 *dump_data;
+	__u64 cap_dui_length_v2;
+	__u8 *dump_data = NULL;
 	__u64 buffer_addr;
-	__u32 curr_data_offset;
-	__s32 log_size = 0;
-	__s32 total_size = 0;
+	__s64 total_size = 0;
 	int i;
 	bool last_xfer = false;
 
 	log_hdr = (struct wdc_dui_log_hdr *) malloc(dui_log_hdr_size);
 	if (log_hdr == NULL) {
-		fprintf(stderr, "%s: ERROR : malloc : %s\n", __func__, strerror(errno));
+		fprintf(stderr, "%s: ERROR : log header malloc failed : %s\n", __func__, strerror(errno));
 		return -1;
 	}
 	memset(log_hdr, 0, dui_log_hdr_size);
@@ -1280,69 +1324,142 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 		goto out;
 	}
 
-	cap_dui_length = (log_hdr->log_size[3] << 24 | log_hdr->log_size[2] << 16 |
-			log_hdr->log_size[1] << 8 | log_hdr->log_size[0]);
+	/* Check the Log Header version  */
+	if (log_hdr->hdr_version == 2) {								/* Process Version 2 of the header */
+		__s64 log_size = 0;
+		__u64 curr_data_offset = 0;
+		__u64 xfer_size_long = (__u64)xfer_size;
 
-	if (cap_dui_length == 0) {
-		fprintf(stderr, "INFO : WDC : Capture Device Unit Info log is empty\n");
-	} else {
+		log_hdr_v2 = (struct wdc_dui_log_hdr_v2 *)log_hdr;
 
-		/* parse log header for all sections up to specified data area inclusively */
-		if (data_area != WDC_NVME_DUI_MAX_DATA_AREA) {
-			for(int i = 0; i < WDC_NVME_DUI_MAX_SECTION; i++) {
-				if (log_hdr->log_section[i].data_area_id <= data_area &&
-				    log_hdr->log_section[i].data_area_id != 0)
-					log_size += log_hdr->log_section[i].section_size;
-				else
-					break;
+		cap_dui_length_v2 = le64_to_cpu(log_hdr_v2->log_size);
+
+		fprintf(stderr, "INFO : WDC : Capture V2 Device Unit Info log\n");
+
+		if (cap_dui_length_v2 == 0) {
+			fprintf(stderr, "INFO : WDC : Capture V2 Device Unit Info log is empty\n");
+		} else {
+			/* parse log header for all sections up to specified data area inclusively */
+			if (data_area != WDC_NVME_DUI_MAX_DATA_AREA) {
+				for(int i = 0; i < WDC_NVME_DUI_MAX_SECTION_V2; i++) {
+					if (log_hdr_v2->log_section[i].data_area_id <= data_area &&
+							log_hdr_v2->log_section[i].data_area_id != 0)
+						log_size += log_hdr_v2->log_section[i].section_size;
+					else
+						break;
+				}
+			} else
+				log_size = cap_dui_length_v2;
+
+			total_size = log_size;
+
+			dump_data = (__u8 *) malloc(sizeof (__u8) * total_size);
+			if (dump_data == NULL) {
+				fprintf(stderr, "%s: ERROR : dump data V2 malloc failed : %s, size = 0x%lx\n",
+						__func__, strerror(errno), (long unsigned int)total_size);
+				ret = -1;
+				goto out;
 			}
-		} else
-			log_size = cap_dui_length;
+			memset(dump_data, 0, sizeof (__u8) * total_size);
 
-		total_size = log_size;
-		dump_data = (__u8 *) malloc(sizeof (__u8) * total_size);
-		if (dump_data == NULL) {
-			fprintf(stderr, "%s: ERROR : malloc : %s\n", __func__, strerror(errno));
-			ret = -1;
-			goto out;
+			/* copy the telemetry and log headers into the dump_data buffer */
+			memcpy(dump_data, log_hdr_v2, WDC_NVME_CAP_DUI_HEADER_SIZE);
+
+			log_size -= WDC_NVME_CAP_DUI_HEADER_SIZE;
+			curr_data_offset = WDC_NVME_CAP_DUI_HEADER_SIZE;
+			i = 0;
+
+			for(; log_size > 0; log_size -= xfer_size_long) {
+				xfer_size_long = min(xfer_size_long, log_size);
+
+				if (log_size <= xfer_size_long)
+					last_xfer = true;
+
+				buffer_addr = (__u64)(uintptr_t)dump_data + (__u64)curr_data_offset;
+
+				ret = wdc_dump_dui_data_v2(fd, (__u32)xfer_size_long, curr_data_offset, (__u8 *)buffer_addr, last_xfer);
+				if (ret != 0) {
+					fprintf(stderr, "%s: ERROR : WDC : Get chunk %d, size = 0x%lx, offset = 0x%lx, addr = 0x%lx\n",
+							__func__, i, (long unsigned int)total_size, (long unsigned int)curr_data_offset, (long unsigned int)buffer_addr);
+					fprintf(stderr, "%s: ERROR : WDC : NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
+					break;
+				}
+
+				curr_data_offset += xfer_size_long;
+				i++;
+			}
 		}
-		memset(dump_data, 0, sizeof (__u8) * total_size);
+	} else	{
+		__s32 log_size = 0;
+		__u32 curr_data_offset = 0;
 
-		/* copy the telemetry and log headers into the dump_data buffer */
-		memcpy(dump_data, log_hdr, WDC_NVME_CAP_DUI_HEADER_SIZE);
+		cap_dui_length = le32_to_cpu(log_hdr->log_size);
 
-		log_size -= WDC_NVME_CAP_DUI_HEADER_SIZE;
-		curr_data_offset = WDC_NVME_CAP_DUI_HEADER_SIZE;
-		i = 0;
+		fprintf(stderr, "INFO : WDC : Capture V1 Device Unit Info log\n");
 
-		for(; log_size > 0; log_size -= xfer_size) {
-			xfer_size = min(xfer_size, log_size);
+		if (cap_dui_length == 0) {
+			fprintf(stderr, "INFO : WDC : Capture V1 Device Unit Info log is empty\n");
+		} else {
+			/* parse log header for all sections up to specified data area inclusively */
+			if (data_area != WDC_NVME_DUI_MAX_DATA_AREA) {
+				for(int i = 0; i < WDC_NVME_DUI_MAX_SECTION; i++) {
+					if (log_hdr->log_section[i].data_area_id <= data_area &&
+							log_hdr->log_section[i].data_area_id != 0)
+						log_size += log_hdr->log_section[i].section_size;
+					else
+						break;
+				}
+			} else
+				log_size = cap_dui_length;
+
+			total_size = log_size;
+			dump_data = (__u8 *) malloc(sizeof (__u8) * total_size);
+			if (dump_data == NULL) {
+				fprintf(stderr, "%s: ERROR : dump data V1 malloc failed : %s\n", __func__, strerror(errno));
+				ret = -1;
+				goto out;
+			}
+			memset(dump_data, 0, sizeof (__u8) * total_size);
 
-			if (log_size <= xfer_size)
-				last_xfer = true;
+			/* copy the telemetry and log headers into the dump_data buffer */
+			memcpy(dump_data, log_hdr, WDC_NVME_CAP_DUI_HEADER_SIZE);
 
-			buffer_addr = (__u64)(uintptr_t)dump_data + (__u64)curr_data_offset;
+			log_size -= WDC_NVME_CAP_DUI_HEADER_SIZE;
+			curr_data_offset = WDC_NVME_CAP_DUI_HEADER_SIZE;
+			i = 0;
 
-			ret = wdc_dump_dui_data(fd, xfer_size, curr_data_offset, (__u8 *)buffer_addr, last_xfer);
-			if (ret != 0) {
-				fprintf(stderr, "%s: ERROR : WDC : Get chunk %d, size = 0x%x, offset = 0x%x, addr = 0x%lx\n",
-						__func__, i, total_size, curr_data_offset, (long unsigned int)buffer_addr);
-				fprintf(stderr, "%s: ERROR : WDC : NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
-				break;
+			for(; log_size > 0; log_size -= xfer_size) {
+				xfer_size = min(xfer_size, log_size);
+
+				if (log_size <= xfer_size)
+					last_xfer = true;
+
+				buffer_addr = (__u64)(uintptr_t)dump_data + (__u64)curr_data_offset;
+
+				ret = wdc_dump_dui_data(fd, xfer_size, curr_data_offset, (__u8 *)buffer_addr, last_xfer);
+				if (ret != 0) {
+					fprintf(stderr, "%s: ERROR : WDC : Get chunk %d, size = 0x%lx, offset = 0x%x, addr = 0x%lx\n",
+							__func__, i, (long unsigned int)total_size, curr_data_offset, (long unsigned int)buffer_addr);
+					fprintf(stderr, "%s: ERROR : WDC : NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
+					break;
+				}
+
+				curr_data_offset += xfer_size;
+				i++;
 			}
 
-			curr_data_offset += xfer_size;
-			i++;
 		}
+	}
 
-		if (ret == 0) {
-			fprintf(stderr, "%s:  NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
-			fprintf(stderr, "INFO : WDC : Capture Device Unit Info log, length = 0x%x\n", total_size);
+	if (ret == 0) {
+		fprintf(stderr, "%s:  NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
+		fprintf(stderr, "INFO : WDC : Capture Device Unit Info log, length = 0x%lx\n", (long unsigned int)total_size);
 
-			ret = wdc_create_log_file(file, dump_data, total_size);
-		}
-		free(dump_data);
+		ret = wdc_create_log_file(file, dump_data, total_size);
 	}
+
+	free(dump_data);
+
 out:
 	free(log_hdr);
 	return ret;
-- 
1.8.3.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
