Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5134025697
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 19:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0RB/ja5Y2fEHTeoUFUqHjxoDiHus9LeX/Cu04ciUYOw=; b=LAS/QO2KEMqjRv
	t3j6IxxK0N5x7lsRHyu4vNulJPqpaT1tQPHaQLgNZRJLjuR41dU6n1vAPXp/GqF6d62X3XJr6p5Hp
	D/V9ZnN89PGQsQAFNxYXC6RWdnF/NnZTTg/SHG80y2hGqZOmzm5wP9uA2kKqW15PP1GFgIMvtvhZ2
	7UHXZF5lwgE9cRiMCFW0xf5yte2l+JYndAWD3kD8WLGIGI6a8S2TxeQqpgODJo/9/9Gng9SFonYeO
	50E8cj1eT0dkgdz7Ni5F87K6TAvoZtI+X2vZKBn5b7yp66haWlIL0ehVuhsCD7g+42FhlTGuD2I9c
	aKFfYpRu36JpPnSzgjAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8UC-0002cp-Ey; Tue, 21 May 2019 17:23:36 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8U3-0002bb-8f
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 17:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558459407; x=1589995407;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=5Xv7McQjhNv3tV3VfoBIauyEwFi92aj5337LhxFzpno=;
 b=lnrv6aw16CfJVksGq4lk7wK8MP2cXJHHx5GihK81HUnxPnGhBBeweEaX
 RZc7DycWizVYnn5fMhSqL7Dc74AKo8YKzaxhDZXdK0KVAhtRqzxQV8Kdy
 wJ51ev6D65FQXN2ouMYFzJumsn+mvTXNGwLjuSYne+fQX/vYhMCxEBe0j
 UgNvHKnPIvOXqXVTGcXMTEvEMC7iFuCybuv0K1qt0uuxMf0E9ZVnBgM26
 /bBu6fbcqf+icxqwmYYCj6vEZC2G1Rhc6CGz3VSgN2PulL7exCdQHEhir
 8YUdbjINoAn6toT2W5+fnbLTcIbfGiMWHTBY81nHZn58dcFt8BrsbZXmu g==;
X-IronPort-AV: E=Sophos;i="5.60,495,1549900800"; d="scan'208";a="113714443"
Received: from mail-cys01nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.55])
 by ob1.hgst.iphmx.com with ESMTP; 22 May 2019 01:23:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IKFpdTpIPrTtwGEKQqm8I1ZatHPIM4VQdAenSqAMPn0=;
 b=yQDV3ltvbhPxRQdP4FHvL1cYkRwQois2Nd+t0ffBE2sUnMbZNjRJuEqEBedEKJqqUIYJaJAXXUnPxb1oiXddGgq7gtpJAV5iEOsPPZt7hcq9/R7VxAcoKd9veyiagTgOj8/u+BjySJdjObUPJWz3cLDPMOlo3FQiFBQHOu9kI9c=
Received: from DM6PR04MB5754.namprd04.prod.outlook.com (20.179.52.22) by
 DM6PR04MB4652.namprd04.prod.outlook.com (20.176.105.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 17:23:20 +0000
Received: from DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::749c:e0fc:238:5c6d]) by DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::749c:e0fc:238:5c6d%4]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 17:23:20 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: Re: [PATCH v2 1/4] nvme: Export get and set features
Thread-Topic: [PATCH v2 1/4] nvme: Export get and set features
Thread-Index: AQHVD+7yPLaHS3C2sUacWM+7/ICPTg==
Date: Tue, 21 May 2019 17:23:20 +0000
Message-ID: <DM6PR04MB57543310310DD72F98E361AD86070@DM6PR04MB5754.namprd04.prod.outlook.com>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-2-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0b65af0-8da8-4223-96da-08d6de110533
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB4652; 
x-ms-traffictypediagnostic: DM6PR04MB4652:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB4652C3D32F3F58F3ED2F98FA86070@DM6PR04MB4652.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(396003)(136003)(376002)(39860400002)(199004)(189003)(8676002)(52536014)(5660300002)(81166006)(110136005)(99286004)(81156014)(76176011)(7696005)(7736002)(316002)(8936002)(53546011)(74316002)(2201001)(102836004)(71200400001)(6116002)(86362001)(2906002)(66066001)(6246003)(3846002)(71190400001)(53936002)(72206003)(486006)(446003)(6436002)(9686003)(229853002)(2501003)(55016002)(6506007)(25786009)(14454004)(476003)(33656002)(68736007)(91956017)(14444005)(64756008)(66446008)(66556008)(66476007)(76116006)(66946007)(73956011)(305945005)(26005)(4326008)(186003)(478600001)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4652;
 H:DM6PR04MB5754.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: a8IxN8xGEPH1GD2DuSU5ayGubMfqbxQ2fpzSplSmSKr0F0rleRfBALcxblxBGu/eSQrSQZOEv4JDOBL2uX91Yy5/cXjefcsqHX3XqgBqoLqiaiglttYeB5xEAT42FC+/lN5juTTzhfXEZh7oDWKln2gq2DxUQgqe62ERy+Zcy5BM9W9uTQLFtKvq9mZWQl0iUiXiZQekTROHUOqzF631YmoMpNYb6YDp0LC3jtjqdnURrHT7OkIvN2PoYflYI0rHdNHTXR9wZ3HceHrFUjv8qSnBoLSNxg3MGaSKJag84c6UlxRHwsfKcSnhuxElIYwKm5d+ZAbgAOBG4TDePCk23QL7KiYe03h7WemGiiY/EQJT5WldYaBVUhrgFi1NRdgLppbFxppXaVAmKQJtg6NwH0/56Et995Ez72akJjFbscM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b65af0-8da8-4223-96da-08d6de110533
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 17:23:20.0382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4652
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102330_989749_581FA856 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/21/19 9:05 AM, Akinobu Mita wrote:
> From: Keith Busch <keith.busch@intel.com>
>
> Future use intends to make use of features, so export these functions. And
> since their implementation is identical except for the opcode, provide
> a new convenience function that implement each.
>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/core.c | 22 +++++++++++++++++++---
>  drivers/nvme/host/nvme.h |  4 ++++
>  2 files changed, 23 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index d352145..c04df80 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1113,15 +1113,15 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
>  	return id;
>  }
>  
> -static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> -		      void *buffer, size_t buflen, u32 *result)
> +static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned fid,
> +		unsigned dword11, void *buffer, size_t buflen, u32 *result)

Your patch is generating warnings, can we please avoid these warnings ?

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#28: FILE: drivers/nvme/host/core.c:1116:
+static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned fid,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#29: FILE: drivers/nvme/host/core.c:1117:
+        unsigned dword11, void *buffer, size_t buflen, u32 *result)

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#45: FILE: drivers/nvme/host/core.c:1135:
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#45: FILE: drivers/nvme/host/core.c:1135:
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#53: FILE: drivers/nvme/host/core.c:1143:
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#53: FILE: drivers/nvme/host/core.c:1143:
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#72: FILE: drivers/nvme/host/nvme.h:462:
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#72: FILE: drivers/nvme/host/nvme.h:462:
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#74: FILE: drivers/nvme/host/nvme.h:464:
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
#74: FILE: drivers/nvme/host/nvme.h:464:
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned
dword11,

total: 0 errors, 10 warnings, 50 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or
--fix-inplace.

0001-nvme-fix-memory-leak-for-power-latency-tolerance.patch has style
problems, please review.

NOTE: If any of the errors are false positives, please report
      them to the maintainer, see CHECKPATCH in MAINTAINERS.

>  {
>  	struct nvme_command c;
>  	union nvme_result res;
>  	int ret;
>  
>  	memset(&c, 0, sizeof(c));
> -	c.features.opcode = nvme_admin_set_features;
> +	c.features.opcode = op;
>  	c.features.fid = cpu_to_le32(fid);
>  	c.features.dword11 = cpu_to_le32(dword11);
>  
> @@ -1132,6 +1132,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>  	return ret;
>  }
>  
> +int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> +		      void *buffer, size_t buflen, u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_features);
> +
> +int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> +		      void *buffer, size_t buflen, u32 *result)
> +{
> +	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
> +			     buflen, result);
> +}
> +EXPORT_SYMBOL_GPL(nvme_get_features);
> +
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>  {
>  	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 56bba7a..bb673b8 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -459,6 +459,10 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>  		union nvme_result *result, void *buffer, unsigned bufflen,
>  		unsigned timeout, int qid, int at_head,
>  		blk_mq_req_flags_t flags, bool poll);
> +int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> +		      void *buffer, size_t buflen, u32 *result);
> +int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
> +		      void *buffer, size_t buflen, u32 *result);
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
>  void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
>  int nvme_reset_ctrl(struct nvme_ctrl *ctrl);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
