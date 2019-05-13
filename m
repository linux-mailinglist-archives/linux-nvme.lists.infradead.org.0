Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695F31B9FB
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=A/E/OeTb7X2IrHWmK3LB075Xu0FjBJ+vuuRs7AACk58=; b=B2lApe9aajwWRA
	iVp3Ujedret54uCa1UqqASiRewhQIhkLB4LpHon0S6S0Mfv8Q2s3evFGQbJb3WpahFeJQHX3sh2WY
	gMvcyyA0ZzMAtBWhWxLlJySrpaT4ZrUHlifyu3zcD9jbOqaDGS78XQ/L5vklEBiKufXlyzCemAdB2
	q1/wohsnhEB3DWeDcHmk7Odms4q3xwO919U120Kh4pq/O6DrdmeCUIWVczmjpLFQ+L5rmj4bSG+Zh
	HuUs0O8AAg8ILvq2OxlSY0MG13gi9WfmeIqm/7y5NxAKfa12YsE6X5H0D+D5HlWqEp/+Q1UWRMf46
	wCkvmK1NPFIOM/PUwnhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCsd-0005yJ-Hk; Mon, 13 May 2019 15:28:43 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCsQ-0005o4-JU
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557761326; x=1589297326;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=vm2BEm43NTq1zUs2nMsTmXHPzSoBXsj2c6hgdn5g5iE=;
 b=gKTX5gGFalGxC6vIMpy85tA6EdrKjku7YcdczPX4KOEiJOYI8xEcl59z
 QhaQTplGeoYILGsXUui/yhLwV/Fl9/t1ba74VUCg2bCfunSWrdIBbDYD2
 isPrIJ4bX0m+85E/7kcjHgSfmFJ9z4THvKhToOHew0ZgKs0LdzCe63DBB
 COZVNF92NYxYe2EmVAaDyeaWKO/4KUozhKx41i+Z2Ui6JiFUbFNEqACTh
 rs1Xhj8Z/vDh2F2gZRRjLuond1/0sJNOcB5CgMPvA/Z0obCH7h+hUxusb
 Huy6QKzzrEzd4C/WZ2Z0QknB+24xn+2bqAh6T6HeCNSZhSptGVlsE2BAP Q==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="207527805"
Received: from mail-sn1nam02lp2051.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.51])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:28:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FJVz5uxb67CyVBfZ0vI47cxV7MIhoO1c6syZIISYhmk=;
 b=KIoFd1ICz3mCRhZmOeDvqnnUT+rfuBpmdAtBMdmqfob3fP4he6meZzkvHL2QX6U6vPPhbAIua9SBNbPFMZMKjz9Mj0qnKf9+fpkDmKCp27y/eCx0M8mfOqxsOsGVFFlm4Q5sdj59YlL+amXnTMAAs/P3r9krxh5HD8LYvQScrRI=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4944.namprd04.prod.outlook.com (52.135.114.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 15:28:28 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:28:28 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/7] devcoredump: use memory_read_from_buffer
Thread-Topic: [PATCH v3 1/7] devcoredump: use memory_read_from_buffer
Thread-Index: AQHVCNsOeO2apvtWyEKVBVay0Hpz5w==
Date: Mon, 13 May 2019 15:28:28 +0000
Message-ID: <SN6PR04MB452758CB8027D6069A748E63860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-2-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7732161-b6b6-4ce9-6ba4-08d6d7b7a5f0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4944; 
x-ms-traffictypediagnostic: SN6PR04MB4944:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB494489EC67A9C91FDA851E07860F0@SN6PR04MB4944.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:192;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(486006)(186003)(54906003)(110136005)(66066001)(476003)(446003)(6436002)(26005)(305945005)(7736002)(33656002)(9686003)(99286004)(55016002)(2906002)(316002)(68736007)(7416002)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(53936002)(91956017)(76116006)(2501003)(229853002)(71200400001)(6246003)(81156014)(14454004)(5660300002)(72206003)(71190400001)(52536014)(81166006)(8676002)(76176011)(86362001)(4326008)(8936002)(25786009)(74316002)(7696005)(3846002)(6116002)(6506007)(256004)(53546011)(478600001)(102836004)(2201001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4944;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4Ow/rc6kWSR5gvYbwD2b1jCbDppe0d7UbjSeX05F2Gj7a5hSTgSoQoq1NwO13EHVvm7hWgGZQm8SscvGHkFb9A7zVkLO20v/svltDIAHzLskJO7medonTYRVoLVK6JebQhNyV1XJQTPgiPSjcSq5C/VnWjJUAEWzCj4O0G/MsYrrmZjQ1PCgY7yIjlTii/VTkWr6p/uXgm3kXeL5vt9y31XvfCVDLBVuhC3Emi0wYgalyjIi8g6a0qrXKsBMkjYBLFf15+nJAwsOx4kEWRK6U+HS6YiAmf4ywZhh+OQrZo7gwuQ03JU7WNDzbiFK+dWjN2rG47JYlxlcISoCP65eprWA1TBd+CT2CYR41OEZCPUytiPdz0lpn1Q08PEdyjsReQYNZXresPWccJ5oUuHvimGv1y2KAh0NBr4yzQhZSAA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7732161-b6b6-4ce9-6ba4-08d6d7b7a5f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:28:28.1166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082831_097394_35998C9D 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>.

On 05/12/2019 08:55 AM, Akinobu Mita wrote:
> Use memory_read_from_buffer() to simplify devcd_readv().
>
> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Cc: Kenneth Heitke <kenneth.heitke@intel.com>
> Reviewed-by: Johannes Berg <johannes@sipsolutions.net>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
> * v3
> - No change since v2
>
>   drivers/base/devcoredump.c | 11 +----------
>   1 file changed, 1 insertion(+), 10 deletions(-)
>
> diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
> index f1a3353..3c960a6 100644
> --- a/drivers/base/devcoredump.c
> +++ b/drivers/base/devcoredump.c
> @@ -164,16 +164,7 @@ static struct class devcd_class = {
>   static ssize_t devcd_readv(char *buffer, loff_t offset, size_t count,
>   			   void *data, size_t datalen)
>   {
> -	if (offset > datalen)
> -		return -EINVAL;
> -
> -	if (offset + count > datalen)
> -		count = datalen - offset;
> -
> -	if (count)
> -		memcpy(buffer, ((u8 *)data) + offset, count);
> -
> -	return count;
> +	return memory_read_from_buffer(buffer, count, &offset, data, datalen);
>   }
>
>   static void devcd_freev(void *data)
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
