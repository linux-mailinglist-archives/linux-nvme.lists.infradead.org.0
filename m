Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C611FFFEE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 20:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N7jTWoNqvA6qB9c73f4V+dBNYWOxDr9w9e8V0FEY1Zw=; b=VhaPGQGmwUX7Fn
	JGibzFU+ciQOMRZJaJspP1sbYEMZ/mH8PO4gp/AZG/kVlOqpbfu+OrYtC3T+yeuHfEHUOhinPpxdr
	aUZF5hMygvxfrzpK2PRp5iXLfei/nkBp3o7C1cAW4q4Lk5cVKPyruLBXaJ7X/tByDOlXdkUdoaCmS
	v0TWx37bknD2C5QTvHjDfTzQDuV5wjjGVkf1ef5RUTji0TRBaOn6E5Hj9I1j8IXh1OsCpACOmmXJS
	plH/eT/p8flfGihTYOT5CZN+/F2UWlzKuc5PqQauJYyZspAqnb8alYVnhRC5WKtsiQtkO+U7QzaaC
	XWH+Q1jUAyOT5RDBGHAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXo1-0002LT-8M; Tue, 30 Apr 2019 18:48:41 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXnv-0002Kp-W9
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 18:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556650116; x=1588186116;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=1LvcmYAEra55vPQBW9/uqsItKIBuCiFLzNjmYVEF1MQ=;
 b=DBVwyzgISs8oyN79BwQOKF4OdikZ2sCc+SKLtVrhkvcpUfO6RIxPbPT2
 S51JHwzE4kjsBfm8QA8yFIYlZizDBHfzbUr82X/XHDbSD8l5zcST8p4ei
 BuHBaRLOfo72T24YR315ZmFoWVbTMRrA05Xfoaf/pGHnrvGFcz+SkSaln
 u8DxmgbfDyisIfjdR0V2Lahc+X/DE3aJrShM7MCyRLGzSk2sPeA4Bv4D1
 W1Aq99hXRIRgUGs6+5X12ALJ8zjxDydheAn1cIZtdxqpeOOSOcYXzs2RM
 vQeCH+xr+bmQoNLZq0sGOcxHasI8/yjiCz07rkIwZDQAdS1XGJDABZicQ w==;
X-IronPort-AV: E=Sophos;i="5.60,414,1549900800"; d="scan'208";a="112151255"
Received: from mail-bn3nam01lp2053.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.53])
 by ob1.hgst.iphmx.com with ESMTP; 01 May 2019 02:48:34 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1LvcmYAEra55vPQBW9/uqsItKIBuCiFLzNjmYVEF1MQ=;
 b=X0OHrwq1LJeCNJd44WhD01pvgPh6EBJGBtQB+o9t+TKOubgygIbCHTP1wWPS9ysEwM4G4lJ/9PRxDo4DqdF6CAMwvHHvbYfwPygyXvFC+hYhyHJcymRC34Wx2iv9DGvXYLQYxCbiyBl/pz94pGxk3/qwj5fimb30HkHIZP6b2iU=
Received: from DM6PR04MB5900.namprd04.prod.outlook.com (20.179.49.138) by
 DM6PR04MB5547.namprd04.prod.outlook.com (20.178.225.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Tue, 30 Apr 2019 18:48:32 +0000
Received: from DM6PR04MB5900.namprd04.prod.outlook.com
 ([fe80::8101:be59:6dd2:15a4]) by DM6PR04MB5900.namprd04.prod.outlook.com
 ([fe80::8101:be59:6dd2:15a4%2]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 18:48:32 +0000
From: Jeffrey Lien <Jeff.Lien@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: [PATCH] [NVMe-CLI] Add Disable IO flag to wdc_dump_dui_data function
Thread-Topic: [PATCH] [NVMe-CLI] Add Disable IO flag to wdc_dump_dui_data
 function
Thread-Index: AQHU/4VPy4G0kDEA3Eq8eU6mXQSyiA==
Date: Tue, 30 Apr 2019 18:48:32 +0000
Message-ID: <1556650099-28572-1-git-send-email-jeff.lien@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM6PR03CA0068.namprd03.prod.outlook.com
 (2603:10b6:5:100::45) To DM6PR04MB5900.namprd04.prod.outlook.com
 (2603:10b6:5:166::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jeff.Lien@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [65.123.219.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76e04439-f651-4d13-65fb-08d6cd9c7107
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5547; 
x-ms-traffictypediagnostic: DM6PR04MB5547:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB554742000B0A069D733235C5EA3A0@DM6PR04MB5547.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:119;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(346002)(136003)(396003)(366004)(189003)(199004)(26005)(68736007)(256004)(6512007)(72206003)(53936002)(97736004)(476003)(2616005)(486006)(64756008)(66446008)(66556008)(86362001)(7736002)(316002)(66476007)(66946007)(4720700003)(73956011)(14454004)(25786009)(4326008)(6916009)(478600001)(6486002)(5640700003)(52116002)(305945005)(6436002)(99286004)(5660300002)(3846002)(50226002)(2351001)(8936002)(71190400001)(71200400001)(36756003)(2906002)(6116002)(81156014)(8676002)(66066001)(386003)(6506007)(102836004)(186003)(2501003)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5547;
 H:DM6PR04MB5900.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Zolgi+GlIkKZrOFHPh/IMK9IqczlsUXqrmTYwdNTuvKd95cpHqTZE0zWMESxXOLCXUdbI/h+2Lz6DeiZduaNz7Z3X7hQboTPmgL4WI4rJM/nb2mD19UUPUCYsli2sK2XKF74dZwy8OZDhctETFK2+RM6td/Y2XHVbL2W22OHaHuNAYgw+WlcA1D+lIsE9qFcfs2G57JHWNmSbxfcWE0DRgBUTmA4dI+iR9n8EToLoQHVfTpCIn6AYYESJ1HoXYyKkbs++qj+sSz992TR185irj4rSMYPpJ5t8PCiLg4S/WMeqHGUVRJSH91nMmJp5+LM1a9RvOXpxfCQeSQMuV3dFIOHUOKDqG5qw98zCYuSrYpR40pTaHFdWgMi1i55HukjoyKCf4w/dU2Jn81d8z4VL+gJoNwdUPZSJX1vlWqQhy8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76e04439-f651-4d13-65fb-08d6cd9c7107
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 18:48:32.5073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_114836_216446_69F8E11F 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 plugins/wdc/wdc-nvme.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/plugins/wdc/wdc-nvme.c b/plugins/wdc/wdc-nvme.c
index f3744ce..4e9cfa3 100644
--- a/plugins/wdc/wdc-nvme.c
+++ b/plugins/wdc/wdc-nvme.c
@@ -126,6 +126,7 @@
 /* Capture Device Unit Info */
 #define WDC_NVME_CAP_DUI_HEADER_SIZE			0x400
 #define WDC_NVME_CAP_DUI_OPCODE				0xFA
+#define WDC_NVME_CAP_DUI_DISABLE_IO         0x01
 #define WDC_NVME_DUI_MAX_SECTION			0x3A
 #define WDC_NVME_DUI_MAX_DATA_AREA			0x05
 
@@ -1061,7 +1062,7 @@ static __u32 wdc_dump_length_e6(int fd, __u32 opcode, __u32 cdw10, __u32 cdw12,
 	return ret;
 }
 
-static __u32 wdc_dump_dui_data(int fd, __u32 dataLen, __u32 offset, __u8 *dump_data)
+static __u32 wdc_dump_dui_data(int fd, __u32 dataLen, __u32 offset, __u8 *dump_data, bool last_xfer)
 {
 	int ret;
 	struct nvme_admin_cmd admin_cmd;
@@ -1073,6 +1074,11 @@ static __u32 wdc_dump_dui_data(int fd, __u32 dataLen, __u32 offset, __u8 *dump_d
 	admin_cmd.data_len = dataLen;
 	admin_cmd.cdw10 = ((dataLen >> 2) - 1);
 	admin_cmd.cdw12 = offset;
+	if (last_xfer)
+		admin_cmd.cdw14 = 0;
+	else
+		admin_cmd.cdw14 = WDC_NVME_CAP_DUI_DISABLE_IO;
+
 
 	ret = nvme_submit_passthru(fd, NVME_IOCTL_ADMIN_CMD, &admin_cmd);
 	if (ret != 0) {
@@ -1258,6 +1264,7 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 	__s32 log_size = 0;
 	__s32 total_size = 0;
 	int i;
+	bool last_xfer = false;
 
 	log_hdr = (struct wdc_dui_log_hdr *) malloc(dui_log_hdr_size);
 	if (log_hdr == NULL) {
@@ -1267,7 +1274,7 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 	memset(log_hdr, 0, dui_log_hdr_size);
 
 	/* get the dui telemetry and log headers  */
-	ret = wdc_dump_dui_data(fd, WDC_NVME_CAP_DUI_HEADER_SIZE, 0x00,	(__u8 *)log_hdr);
+	ret = wdc_dump_dui_data(fd, WDC_NVME_CAP_DUI_HEADER_SIZE, 0x00,	(__u8 *)log_hdr, last_xfer);
 	if (ret != 0) {
 		fprintf(stderr, "%s: ERROR : WDC : Get DUI headers failed\n", __func__);
 		fprintf(stderr, "%s: ERROR : WDC : NVMe Status:%s(%x)\n", __func__, nvme_status_to_string(ret), ret);
@@ -1312,8 +1319,12 @@ static int wdc_do_cap_dui(int fd, char *file, __u32 xfer_size, int data_area)
 		for(; log_size > 0; log_size -= xfer_size) {
 			xfer_size = min(xfer_size, log_size);
 
+			if (log_size <= xfer_size)
+				last_xfer = true;
+
 			buffer_addr = (__u64)(uintptr_t)dump_data + (__u64)curr_data_offset;
-			ret = wdc_dump_dui_data(fd, xfer_size, curr_data_offset, (__u8 *)buffer_addr);
+
+			ret = wdc_dump_dui_data(fd, xfer_size, curr_data_offset, (__u8 *)buffer_addr, last_xfer);
 			if (ret != 0) {
 				fprintf(stderr, "%s: ERROR : WDC : Get chunk %d, size = 0x%x, offset = 0x%x, addr = 0x%lx\n",
 						__func__, i, total_size, curr_data_offset, (long unsigned int)buffer_addr);
-- 
1.8.3.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
