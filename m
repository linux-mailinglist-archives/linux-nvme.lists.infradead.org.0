Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F312703F
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Dec 2019 23:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6haeOI7IpKNvOMUS4EM4KP+ZcrszR80q8aq/R/lkh7o=; b=jm64R8OuPT71/6
	xUTmfnzPqdvWEvyIkOc4PRMkNHRGgkvp/KQ+bpfnEB7l76keBbS5vwton1ACiZJxN2aVJcI+cDHDk
	JxAjV4AjLzJQXxpA03oTuJJz8pEq/zY5o7y8bbWCFMy2p1BbXorrF9ajjvMeeMFzroFDW+5HY8wlw
	V5spJkdgQE2mR+HC/X22nt7xl654gf8FlN91SNBa0qhOLdFDsJV5/VgSNearCqJwY79yGNtSkS9cM
	xADs+WVo6hbEARxycodNxq6Sh4shYUhKV6j/TiDwaKML5iuqdEz63At9KKC7dtbN9b11CYcu1WSAP
	SaB8+3WXlTAIzO3ZOYNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3tr-0002iX-Oe; Thu, 19 Dec 2019 22:04:03 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3pU-0001eH-Ig
 for linux-nvme@lists.infradead.org; Thu, 19 Dec 2019 21:59:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 13:59:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="417748802"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2019 13:59:31 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 13:59:31 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Dec 2019 13:59:30 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Dec 2019 13:59:30 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.57) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 19 Dec 2019 13:59:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G5t+cKdJ/fGG7HELsmIHfaPLnq6VsEipPdlJ+PhJCMJ4m4yVDHINqsfZEMkpb8IcoYoH3vtklotttaKVt/ycT9cGCkk9a+Mos1ywkTz1Ka4k2QJgVIGDm870cfq9c/o3BuWeeXlZEkl77iCNPfLgAyeQfOBT34oOiF/JE6AnkX9BWrNeEY6MDWcLN04acCXeFy1SMs9Z08gO5kXg9NPNI5D+r6rYB8taPDVd4KnKxMeA8lG5fOUaLUusQ27JBsnZwR1H2KBA9Nb1hYEXJvAe8zFgi4R4t4sPpzW+ssDq0XmXe2p99lgvbIUbwWh6qeN4qA6p5HmYWTmn16fkkjEwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fhucOm+f3Y1vpDvjkXWFOuO28NW66rfpIbMpupg9viA=;
 b=GPyy64Dvf59yqMWksSv2FTEd62xf6IDUZlZdxxzmhZRxYarBLALh2RtlyDpcjZxCVNhpKaEZ28Q3qyDkHDb2BSgHhSNXZkgIoSGluXNVE1HDWA6Ulq80db21UBqteiddj4XJ93/zky1I9E3RpstbXzEH6oSqhTLhHMPS0vJWm3UzMxDzKyJTQ+yeNv7gc2CGUrUCwWDOY0503mS3jkcXtTqIzH6MZBdzPES9kkMsKt59pKuqzn1qP+4/tyshYYhPgg5QsSJiXg5xmUSEraKxDJYkC67QcJ8H8boZalGZwL/FswsVQZ+FZpA7EL0dyhUkDF+fgOJNNBabv+U9+nkvvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fhucOm+f3Y1vpDvjkXWFOuO28NW66rfpIbMpupg9viA=;
 b=GBfJjBH0JfTNI8FmYU5rU/ZcD+o81nMvMeDvtGmawUE2WLYWbEN6W3BZWpZwatHp1RoiS5quFblhyT5MzfU5013NVeuHFJjJzrLOeT5OZbnwWGQlysjow1bol11iMqJjWfbRnaDGTnILrss9JaCghBR7tvQXmP4LHdYdRgDdx1I=
Received: from SN6PR11MB2669.namprd11.prod.outlook.com (52.135.90.153) by
 SN6PR11MB3358.namprd11.prod.outlook.com (52.135.110.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 21:59:14 +0000
Received: from SN6PR11MB2669.namprd11.prod.outlook.com
 ([fe80::5db8:ff89:9146:d508]) by SN6PR11MB2669.namprd11.prod.outlook.com
 ([fe80::5db8:ff89:9146:d508%7]) with mapi id 15.20.2559.016; Thu, 19 Dec 2019
 21:59:14 +0000
From: "Ober, Frank" <frank.ober@intel.com>
To: Keith Busch <kbusch@kernel.org>
Subject: RE: Polled io for Linux kernel 5.x
Thread-Topic: Polled io for Linux kernel 5.x
Thread-Index: AdW2ohLJtbfHvfzMSqCNfckqZUjK2wADBvUAAAGTGCA=
Date: Thu, 19 Dec 2019 21:59:14 +0000
Message-ID: <SN6PR11MB2669F3546ADCCAEF1D8E50308B520@SN6PR11MB2669.namprd11.prod.outlook.com>
References: <SN6PR11MB2669E7A65DD0AD9DC65A67C58B520@SN6PR11MB2669.namprd11.prod.outlook.com>
 <20191219205210.GA26490@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20191219205210.GA26490@redsun51.ssa.fujisawa.hgst.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjQ5MTIxNGEtNzJhOC00NGEyLWJhOGYtOWYwODNkMjVhNjkzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiT2FpZTEzTERWVnpXRVV0UmtUclBTXC9vQnhxc2xjWkx2ZkI3V3F0RXUrS3pVMlJhcUNFV0wwa0gzZE43MkFLazEifQ==
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ctpclassification: CTP_NT
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.ober@intel.com; 
x-originating-ip: [192.55.52.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ae249463-10d9-4b9c-6f5a-08d784ceafb4
x-ms-traffictypediagnostic: SN6PR11MB3358:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB33587A747873FED2CFEF98708B520@SN6PR11MB3358.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(136003)(346002)(396003)(376002)(13464003)(189003)(199004)(478600001)(66476007)(66556008)(107886003)(86362001)(64756008)(33656002)(66446008)(71200400001)(53546011)(2906002)(6506007)(55016002)(81166006)(186003)(81156014)(9686003)(66946007)(8676002)(76116006)(26005)(54906003)(316002)(7696005)(6916009)(4326008)(5660300002)(52536014)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR11MB3358;
 H:SN6PR11MB2669.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cBZM7thEb22ldrK1CvzuqipFie4i4thtMiIzqskKAAmfCr2/HiOGXMuQl7hD/hFWWD1stXaWyjYZaSfX+qBOMpx4WWuGQBpHfyk9dh+rViqC6M60uSwceCQLrDmlt5gngZcWochpXnvsTeHC18gRJlWoYEKJyIH1zPE2LNPCsxbaew7Y0DdaF+FYNOH29gtMnNsZYGoMe3aBP5GuLybgSe4ErWA0PFBtK2Ti4qOhFk/tSWijcxLg8iq0JcDTrnEuAC5ZgHWruMM+McB4vITqbmuWEuAHZEqCX5TRRzdwmjD4edZwNT5LwijQP1afgVysn6Q5FAOG90kJYuMogartTQ0uoLr3fJQVSQQxhGbh65dpHpH4dd/2nhc6wXNkm8KVpxGm9qHuGlWJwI8f717n+4VlmTSuHoYcCJDO5+NdkCcVJkrL2rDwh6JZFo6tap9M0KmjyFS093/oR3xk8w+JCAIx8z5cW32IbSpN/Kd66PgZR2cWtujhDzhctTG8tkqC
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ae249463-10d9-4b9c-6f5a-08d784ceafb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 21:59:14.0902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SxMlaGlK/n4h1MuJ/4rrW7Ag5O+CzkYg5SdJB4FfyyTZn80OefMwg2AVGuA43hnfMprGaLGX/HvINko8Z0hW/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3358
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135932_804290_26A500F4 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Rajendiran,
 Swetha" <swetha.rajendiran@intel.com>, "Liang, Mark" <mark.liang@intel.com>,
 "Derrick, Jonathan" <jonathan.derrick@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks Keith, it makes sense to reserve and set it up uniquely if you can save hw interrupts. But why would io_uring then not need these queues, because a stack trace I ran shows without the special queues I am still entering bio_poll. With pvsync2 I can only do polled io with the poll_queues?
 
Does io_uring avoid the shared resources?



-----Original Message-----
From: Keith Busch <kbusch@kernel.org> 
Sent: Thursday, December 19, 2019 12:52 PM
To: Ober, Frank <frank.ober@intel.com>
Cc: linux-block@vger.kernel.org; linux-nvme@lists.infradead.org; Derrick, Jonathan <jonathan.derrick@intel.com>; Rajendiran, Swetha <swetha.rajendiran@intel.com>; Liang, Mark <mark.liang@intel.com>
Subject: Re: Polled io for Linux kernel 5.x

On Thu, Dec 19, 2019 at 07:25:51PM +0000, Ober, Frank wrote:
> Hi block/nvme communities,
> On 4.x kernels we used to be able to do:
> # echo 1 > /sys/block/nvme0n1/queue/io_poll And then run a polled_io 
> job in fio with pvsync2 as our ioengine, with the hipri flag set. This is actually how we test the very best SSDs that depend on 3D xpoint media.
> 
> On 5.x kernels we see the following error trying to write the device 
> settings>>>
> -bash: echo: write error: Invalid argument
> 
> We can reload the entire nvme module with nvme poll_queues but this is not well explained or written up anywhere? Or sorry "not found"?
> 
> This is verifiable on 5.3, 5.4 kernels with fio 3.16 builds.
> 
> What is the background on what has changed because Jens wrote this note back in 2015, which did work in the 4.x kernel era.

The original polling implementation shared resources that generate interrupts. This prevents it from running as fast as it can, so dedicated polling queues are used now.

> How come we cannot have a device/controller level setup of polled io today in 5.x kernels, all that exists is module based?

Polled queues are a dedicated resource that we have to reserve up front.
They're optional, so you don't need to use the hipri flag if you have a device you don't want polled. But we need to know how many queues to reserve before we've even discovered the controllers, so we don't have a good way to define it per-controller.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
