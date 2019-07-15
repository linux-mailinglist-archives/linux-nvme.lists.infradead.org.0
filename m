Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10969998
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 19:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=t2gv0JsUO6eykU6MBpf/MUEb4xT4WLKpZKgdiLyWPQI=; b=JwCImJnUllAX5G
	VGXe4ukbMFOAAOM+8YL71wUJa3izj/c1lzsziKmHM4sIdM4RCbojv6b3PpYtF9PQEDaNXVR9H+Dcz
	W5OAfVYZgqQqX0gNP9SRYBKIs9FtdWUPysxSS5YYpqQ/RHofUDNK86yT6Jc/V7PmGwn14qy9QM1Df
	2lE4t5t8hIvZCye+afslVmN0sNyK1P4tZ46Hg40dHWjtqFGkD1W1ikLSNDWpsGhP3J9664/tC6mCR
	XqQ7p/yZzPo6UTlezw1xOLN9UvshuWZuDcWU8YcdI17FL4Yryno5sBOqHM68SHlSqRC3IUsS66bW7
	lWfDlIzB6VDOtbHD/9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4YS-0002MO-52; Mon, 15 Jul 2019 17:14:24 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4YD-0002Lh-6h
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 17:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563210849; x=1594746849;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=pgaczY4N7A4DAjlYSkaBs2q1mo5hGvvPqk7MYQOWvhg=;
 b=TiLSZlZa3mIhgFqSmFT5SHI12BMiqwTwwCDrexCcEHSXi1Vmrh6m9ghO
 Kn1TKO6XuqLlPQvvwLvCZLMyM/wgNRP07lCnoih6AD6G6gUzaEd0vv3/S
 9J8n0Vs9K/sU9O4TnhinXe6DwQg19ldlDCAeE9NGbXZhlItTCQqwp8wmL
 5A30/eiWNdKqsi8G622+A3vOT8Fv3NO0JEh/m3GYbTXkP7kaf3v9Lv20M
 o3ROys9EiM9hWnQbkm2GIpQMws38JNJklMVig6ru6iPNOwWY8ShWbo9Iy
 5NaJEK8hMOBPXOcFNlTQh0mWsBfzDhA9zACoWDXB4+IgJ8FSjkrV9Jocp g==;
IronPort-SDR: Pm2qQy5/9UxcYTmiMtP5BDAj1mDi0Y5XVYaXY/zYztgr6nZ2TkLvgi9FT7j+5sHE5N4D+z789i
 U5kSoPTsDMX4ukIQbdjCpI3OjSyjSwQfSvvuIQXswtfWZvXevPkvK+iBV6B/w6DEpP6iJo0vS/
 oZqe2Ujx6tPGwrcsgkUSU5gb3+dKHAIg6/fgRls/AWWVfdnR80y47cyVbGXINdKYxCFQWikvuB
 HY0IoKAFw8Jx6WmEWCwyHCndfuUHwTvz7zb2/bjCphxDRVLOM67I/s52frPVYeJjuN3VXp/5VT
 MBs=
X-IronPort-AV: E=Sophos;i="5.63,493,1557158400"; d="scan'208";a="117861108"
Received: from mail-co1nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.58])
 by ob1.hgst.iphmx.com with ESMTP; 16 Jul 2019 01:14:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDGWZUqvNQXLxjSS8TWNr0NGHenlOVzZ6bTCmsZjfw7H32QkAIHee4Q3ofMzvgQZHyMZ7RPgK17Z7M3csvsT3fNKgkiRAT9aKS9QeWrhHTSwur5KC1D+5TSfus+a0XVr99pEb0mwznLmfZ73c1oUi6DzWOnDLsXQWUAuONqsFWNDUks7Z3+IaVYdKVuU/g4+z5mqwKq0NP+qxr7HzHbe485KRqYc5swyelqzdF6V531E3Z/0LV5TZq1NaE5HCWMXdDVNiN31dIT8xKOQzul4OYyyjXtLmQ0+xPKQ+g0YBpQDXDm9OyacZdlEykg2kkK2QV/DSryYb6sdNXLeeC1bUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UynnawN4qoAVJSVBaDBLQ4jT9cS3KdE7/R7cgxj3ShE=;
 b=W9jHgm7AYWiK2rYh1XOwMppE9K6Yo984iCjA1JvHeNR2W5pxPHY3CCjVtlHu37vjZWURCqstW1UmEzJh0M91gWRwUrh2sqDRmNsJvdfKlX7hm3ylU3CvC8F+vxcvc//mlschG+vHzcZ2kgcgWVo0mmDqTxvE2ba0J9edmhxlEx3WiqRwZrmQX+Haih4jZp2fxl12f0Q//MfodRfaGjG+bECbcJ2T7LM9nthwS8ja8HeUx3UZfUFmdp5sMAhA+ZQqAALSyzzjcsxZ9y12KGRXvwjC1x8bi199YHlz33P7+TZtuX+/Xy4b6+XWAhEGJ177dIJsurr3NmHHAUuiulLLAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UynnawN4qoAVJSVBaDBLQ4jT9cS3KdE7/R7cgxj3ShE=;
 b=ePZwL5Wdb0kORHRSD1YXOVHMWm5o3HjGosS02gLDidTWBPkUYYf/JOMnEE5IG28L573U2ENErKQ2ZU0Kv1MJG8q8eDliAwHTd2ZAT+3fWuDG5ZTZNkny+9UNmr9UOb6a5n7nAtn1tEfT9Pd1hY75qzln3p4KCnH3gTk6z19F/Fk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5782.namprd04.prod.outlook.com (20.179.58.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 17:14:03 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 17:14:03 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, Omar Sandoval <osandov@fb.com>
Subject: Re: [PATCH blktests 00/12] Fix nvme block test issues
Thread-Topic: [PATCH blktests 00/12] Fix nvme block test issues
Thread-Index: AQHVOQ2j96MWFrsRX0KhibpIudRQNw==
Date: Mon, 15 Jul 2019 17:14:03 +0000
Message-ID: <BYAPR04MB574921F8E6F38535AD161F3286CF0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190712235742.22646-1-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e80e3c68-b604-4373-824d-08d70947d611
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5782; 
x-ms-traffictypediagnostic: BYAPR04MB5782:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BYAPR04MB5782EBB38853153B9006F1B286CF0@BYAPR04MB5782.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(7736002)(52536014)(305945005)(478600001)(8676002)(4326008)(68736007)(26005)(966005)(476003)(5660300002)(76176011)(446003)(7696005)(66446008)(76116006)(66556008)(102836004)(66476007)(74316002)(66946007)(53546011)(6506007)(64756008)(229853002)(2201001)(86362001)(186003)(9686003)(71190400001)(316002)(110136005)(486006)(54906003)(3846002)(66066001)(81166006)(14444005)(256004)(6116002)(99286004)(6246003)(8936002)(14454004)(53936002)(2501003)(33656002)(71200400001)(25786009)(6436002)(55016002)(81156014)(6306002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5782;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jraGA1qmiErmZDSpCn8okXMkmVBluTPvUEocWW6dI+eIIjQgpPkhlUjxmMPhg6jnYKZ92U6FXiwoFGj6hNRaZdKcRLOLlbNGWkXOYsKE5Ae/gvHRgEbuh8pM3tdWwYOzspIKaWN2sv+GlOG4POdEUxvyouDfdou+079K69j6b4aLxG92ctZfhwvMyhueobv1FnUh9Vww8xfIrUgSNB5a4vcw/8LO5caBE3sMbHWLQIcwp+//nJacuYur3WurD5BMwqBtvD2RLdzTpZ6k2Ni2KRbthz67ijhpoDIIY9MW78v2Dd3EoNFBnwhSvls5xLI8LGQkJFc1m8VgG3dqEqZvB/CkI0m3Oh8XNNT6hECn2tWL/Uss1fpaiKiLqaodMSqlSW/O5paoJxZ/4ukrmyWuwbP0/c5LSG4wultvicnBHjs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e80e3c68-b604-4373-824d-08d70947d611
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 17:14:03.3824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_101409_410638_2E1DB08D 
X-CRM114-Status: GOOD (  22.25  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Bates <sbates@raithlin.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Theodore Ts'o <tytso@mit.edu>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks Logan for doing this. I am overall okay with overall with
these changes.

Once you post V2 I'll test it on my machine.

On 07/12/2019 04:58 PM, Logan Gunthorpe wrote:
> Hi,
>
> This patchset cleans up a number of issues and pain points
> I've had with getting the nvme blktests to pass and run cleanly.
>
> The first three patches are meant to fix the Generation Counter
> issue that's been discussed before but hasn't been fixed in months.
> I primarily use a slightly fixed up patch posted by Michael Moese[1]
> but add another patch to properly test the Generation Counter that
> would no longer be tested otherwise.
>
> I've also taken it a step further to filter out more of the discovery
> information so that we are less fragile against churn and less dependant
> on the version of nvme-cli in use. This should also fix the issue discussed
> in [2].
>
> Patches 4 through 7 fix a number of smaller issues I've found with
> individual tests.
>
> Patches 8 through 10 implement a system to ensure the nvme tests
> clean themselves up properly especially when ctrl-c is used to
> interrupt a test (working with the tests before this was a huge
> pain seeing,  when you ctrl-c, you have to either manually clean
> up the nvmet configuration or reboot to get the system in a state
> where it's sane to run the tests again).
>
> Patches 11 and 12 make some minor changes that allow running the
> tests with the nvme modules built into the kernel.
>
> With these patches, plus a couple I've sent to the nvme list for the
> kernel, I can consistently pass the entire nvme suite with the
> exception of the lockdep false-positive with nvme/012 that still
> seems to be in a bit of contention[3].
>
> Thanks,
>
> Logan
>
> [1] https://github.com/osandov/blktests/pull/34
> [2] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/
> [3] https://lore.kernel.org/lkml/20190214230058.196511-22-bvanassche@acm.org/
>
> --
>
> Logan Gunthorpe (11):
>    nvme: More agressively filter the discovery output
>    nvme: Add new test to verify the generation counter
>    nvme/003,004: Add missing calls to nvme disconnect
>    nvme/005: Don't rely on modprobing to set the multipath paramater
>    nvme/015: Ensure the namespace is flushed not the char device
>    nvme/018: Ignore error message generated by nvme read
>    check: Add the ability to call a cleanup function after a test ends
>    nvme: Cleanup modprobe lines into helper functions
>    nvme: Ensure all ports and subsystems are removed on cleanup
>    common: Use sysfs instead of modinfo for _have_module_param()
>    nvme: Ignore errors when removing modules
>
> Michael Moese (1):
>    Add filter function for nvme discover
>
>   check              |    9 +
>   common/rc          |   18 +-
>   tests/nvme/002     |   10 +-
>   tests/nvme/002.out | 6003 +-------------------------------------------
>   tests/nvme/003     |    6 +-
>   tests/nvme/003.out |    1 +
>   tests/nvme/004     |    6 +-
>   tests/nvme/004.out |    1 +
>   tests/nvme/005     |   16 +-
>   tests/nvme/006     |    6 +-
>   tests/nvme/007     |    6 +-
>   tests/nvme/008     |    6 +-
>   tests/nvme/009     |    5 +-
>   tests/nvme/010     |    6 +-
>   tests/nvme/011     |    6 +-
>   tests/nvme/012     |    6 +-
>   tests/nvme/013     |    6 +-
>   tests/nvme/014     |    6 +-
>   tests/nvme/015     |    5 +-
>   tests/nvme/016     |    6 +-
>   tests/nvme/016.out |    9 +-
>   tests/nvme/017     |    8 +-
>   tests/nvme/017.out |    9 +-
>   tests/nvme/018     |    8 +-
>   tests/nvme/019     |    6 +-
>   tests/nvme/020     |    5 +-
>   tests/nvme/021     |    6 +-
>   tests/nvme/022     |    6 +-
>   tests/nvme/023     |    6 +-
>   tests/nvme/024     |    6 +-
>   tests/nvme/025     |    6 +-
>   tests/nvme/026     |    6 +-
>   tests/nvme/027     |    6 +-
>   tests/nvme/028     |    6 +-
>   tests/nvme/029     |    6 +-
>   tests/nvme/030     |   72 +
>   tests/nvme/030.out |    2 +
>   tests/nvme/rc      |   64 +
>   38 files changed, 208 insertions(+), 6163 deletions(-)
>   create mode 100755 tests/nvme/030
>   create mode 100644 tests/nvme/030.out
>
> --
> 2.17.1
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
