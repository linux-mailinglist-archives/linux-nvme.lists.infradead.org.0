Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E70C3A1F5
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XuxyvAj3/qTUnkFRPRK9tbDAwoinIaTjDYPTJwsoquA=; b=cOLtLoIVR+w6/Z
	obh2l9duYbtzvwnOpEx0xtnDPeDQKBw0KetUmji8v+HscNSFXRukPVajixa19Cz0M37ltx9zDK32d
	oxgqzg2XjAKcVyah6xdsq/YkQ2rFAn9G2YKgjRWT9RGlj1ew8UpCuU1GDo60oI1aM3iJTEqkXdHBO
	iH6DDDJNlTGIUsFWfE3tnE8jAcUCz0j3L56eFxGznwcj8e/M1iHOgco1fiBBBfH4AdEfaAx62IG/p
	7xNQuTY7/GdftGE/AnukucFwX+FIVKxLU3ZiVkV+gWtFSywKzG1z43qMR++hGSApKfGiChpQl4Ayr
	lDXdAaTEFom4tL6HbLag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhwJ-0005wo-4D; Sat, 08 Jun 2019 20:27:47 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhwF-0005wU-9F
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:27:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560025663; x=1591561663;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=8jGlsv/fWN9ZmbwUd+W8qrGIsxdReJUkRsAGN22DD9U=;
 b=UtHFG1wssdQ23WYQ7fi+/dVMvGuZ0M8Hu+XcR52F1Q7b+al+tZJGoscg
 3YPgGg6KS595Wwmunhd7NmrS4EgnKlf60hIv/U/r8+Fz4HCtJW3CWwi9c
 AQnNz5QP/8/3u+IsdkIjau8hKiy0RrEwHIFE47D5BvKZwpwj2H1XZbEWT
 CJuph8MwJmQ+R5JZ+Xvby9ahb1ZMdERVs7TUTMEg0dTD6WlhL3+8scrgr
 e4tmFtPqYyHGZP8LXPiI1xNatmiCabvk7+Zb7MgRzhmyP39lHAKbssnT5
 SdEvuDNIE2ehQUOMj05VybJxXDPf/d7tNY7+0r9HSZD7JX6Pctd4krbbM Q==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="115048375"
Received: from mail-bn3nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.54])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 04:27:37 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wsbME11By0xuGLhnolZ/+1ttAWypiPrnZp17IOGzng=;
 b=QZyG0qayOsLOf2hikgu2/9KZ62Md8p0Y8MLfxL5P2zrzVeO5RNS868fyyKPptbYOBnvZhPW3iRbKmvqbVaHr1xOrPXucd33Uhx3rpUtdesh/0OBuIuI98uF9QNhnUdWEJv0zWuJKOYS9IYnO4vsmQaEDWMQvKBeLLYAQCpYcwZ8=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB6166.namprd04.prod.outlook.com (20.178.235.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sat, 8 Jun 2019 20:27:34 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 20:27:34 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/3] nvme-pci: remove unnecessary zero for static var
Thread-Topic: [PATCH 1/3] nvme-pci: remove unnecessary zero for static var
Thread-Index: AQHVHiRlsfXIC1+aqE6HAEPSVzHASA==
Date: Sat, 8 Jun 2019 20:27:34 +0000
Message-ID: <BYAPR04MB574999D2B430187C53DEC8E986110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4145117-501c-47e1-7f50-08d6ec4fbdbf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB6166; 
x-ms-traffictypediagnostic: BYAPR04MB6166:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB61665476898103A326A9EC0386110@BYAPR04MB6166.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(366004)(39860400002)(396003)(199004)(189003)(81166006)(66066001)(14444005)(6246003)(6506007)(68736007)(53546011)(229853002)(9686003)(81156014)(6436002)(99286004)(316002)(256004)(52536014)(8936002)(478600001)(5660300002)(25786009)(86362001)(76176011)(14454004)(72206003)(4326008)(102836004)(54906003)(2501003)(2906002)(110136005)(7696005)(8676002)(55016002)(26005)(446003)(7736002)(74316002)(76116006)(66946007)(73956011)(6116002)(486006)(53936002)(66476007)(66556008)(64756008)(66446008)(71200400001)(186003)(4744005)(33656002)(305945005)(3846002)(476003)(71190400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB6166;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y2XPN2YIZNkUBTqmozR1Dk0okHBmEex7YXVWa5ew3WpWr/1jivIXC5jLQxDuLM5nC9rKA7Qti6Qv3wWGT9XA7CeEHRoFPacM+4ofcOUq2PIwIstk3LQqc+tdP3+EZ9iSDFyDAc3jMMJEyvT1DluOsaIRFa3Z/fXMs/HoGoJwo7undxQXURCEof+kahPLuoDQ1+SETvxD8RIz0HbpEKhx1t6tLp/0J/cZUpNz+QYyDt+hm1xDzKgCuvZoxxoxIIauMq27p46w6K4csiMwiwEjoq2xJskUUjb+gwcXMeTDi4qmHEXm6nfcYo4QHtylcGsetaxenebOCyC8GeEOScN4DlqK587y4MXqoxMbk3oEFJFUGpkZqJ9UM1BUqg6chiZzSllWDaDIsepHDTVJpFCxeVrGir1HpFOOANBDrPOPigw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4145117-501c-47e1-7f50-08d6ec4fbdbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 20:27:34.7200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB6166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_132743_485264_18D0CE9F 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 06/08/2019 11:02 AM, Minwoo Im wrote:
> poll_queues will be zero even without zero initialization here.
>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Ming Lei <ming.lei@redhat.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/pci.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 5c051a8470d4..047785023892 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -80,7 +80,7 @@ MODULE_PARM_DESC(write_queues,
>   	"Number of queues to use for writes. If not set, reads and writes "
>   	"will share a queue set.");
>
> -static int poll_queues = 0;
> +static int poll_queues;
>   module_param_cb(poll_queues, &queue_count_ops, &poll_queues, 0644);
>   MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
