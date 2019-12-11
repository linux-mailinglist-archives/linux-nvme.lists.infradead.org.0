Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B408011A533
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 08:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=2b0FIe6HflAcmbmb6VYryY33s0Deee3D8ZcW++JqKxc=; b=k5fCxTsm/BARev
	YfFfel04Xqf6w4HOa1caTa2+BvHxk8u13utCmKlbiFSfS2orPg821Cp7vxbg37W20ZPicf3bT9fj0
	5+jZfWLh25ZC6x3aQ8L9RkvynN0YK/1L1ghmsxrADoLlOFudaq2t/zkvXBkclKHRX04jEQXr3g1Wa
	+D5rvz3Au4uBOtbXO2k0sN6Z4uffvykM2GrNrsCVodtb8puDkYgcAJG0zNwUlpUj/+Ip4IFNRoas6
	sAcik97oKh66uSgvv2zVJpnsU9xUuVcLnRT15sX7WasES3kp4CpzFz4GZp9QBlRqhf5LjnLtPYopD
	AIaEy0XCHLneFf5EjOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewaa-0005Da-NR; Wed, 11 Dec 2019 07:39:16 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewaW-0005DH-Bd
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 07:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576049952; x=1607585952;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=cEhBIyUGEMkpsuCJPV05sK6rfWAtnADUPgFSnK7MwsE=;
 b=h+nJIAAFw/dGDF1o3e0tFIJKvn72JohahqQuVRgtRS4mVJCIyzzSLImb
 /bwDI4Qc5aeVSH1qL8T+zNgT6IoOi1l5xnScpuDwcBWF/lO7VStdTgggC
 NAwFCCjTQv3sRV+WXOsBwCT0IjwJw3m+/eczC2H2R4leRWYlkMLN0Ib54
 6rDGCG/p59brtNTJGGeLQwmigSQm8MQcsmaKRlgGbB9IrNfQDr8zFC3L1
 bMqDV27zuy9enMCP6xFHqrUGfZ+0AO4PU0QAlClMkdZvsLNq8Iwnda+c6
 EgHSF6xvQGqQaRRXcDUxH4VaRg3PIXnnw/NJjUynyNaz+psdRAzfJmgbu w==;
IronPort-SDR: Rg1BJKWvtSrIFHTWBHBUOmplraBeUY848SNCDevlsvMOrsQcKEjOl1iyz9vlFNYY7VmgY3enkt
 CXyemjq1GIObad5G7sJZHL/FbbNYr9hLoUFT0IFjFBZnZhvCpGdFwKtx7F3amSPLv/7QKRIC54
 3kyUJJYnAQmE9Wxzo4K9mzcWxH55ybgFJ0Nu+eN0x5bKZh14y0N6/CsEZqIAZ/5+YBy7icb8xQ
 rRZmRAeT/SHg/wArGV93wzqUxn1jVAZ5dh7OsKXeHWcW5tJ7cvbY12RxLijRiY8vuhLnU+eNha
 G0Q=
X-IronPort-AV: E=Sophos;i="5.69,301,1571673600"; d="scan'208";a="129518186"
Received: from mail-bl2nam02lp2050.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.50])
 by ob1.hgst.iphmx.com with ESMTP; 11 Dec 2019 15:39:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNYd7dZSLlgDL9q6wd0I4Wz2jLvCsxC0I/omLceC7zOW4C9YdQ0UXupq5WSUZTn5+QKf7kNHloW/pVYTrmAWhfM0hK5/H9ALh4DM1keeHmXU3cKHHKdQ2Pyj0MUZGED71uSgEy6SuykinyjN+RZxoOZrt6zEfZXIDrKwPs+2/vfQka/5fr8lYE/82qhrdjQK39GHjO85d4sBAcXgOXNBslYopWnVpHvuK9SIxdbtSTSpFItdAZxH07wCBXWlmRPtmvS64m6r3aZJ7gZ2sJovp2v0oP0N8PmIpGJLuou2lQqxstXD1EDFLCzQp/LC14ge8dL1BPZQ13XT9pVWLI5vDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEhBIyUGEMkpsuCJPV05sK6rfWAtnADUPgFSnK7MwsE=;
 b=Z4R4WvQdaN2rrbfDc6557HZNa1iN6NO0AByiCIOh1PUGPMv1RbabJBhVOZIdZpS6zRLWFtJoc0mfnxbnY0xXMjyjF3nceg68Y+rY8Y+57zUyN0mjSM5uwMNvqUwDRLimzDQzMYltbLZSWCiN5DlX2/mV7O9fx/aG1KSWx6qG/SPU0B4rn7iPx5mtz0U3eHT3FXf24KrHWeDVagf+EIjnHHegP+nSmRUI72YuBFauJNV/dFlXEFYTCtB4zb6bNgqYceyNQqyd1ZTVXhW1VjN7JYeaMB84OuyUzppIh41gzpZcOtlwC1FeMIBKj6/4FlZMxGaR29vwh2VW30bg+VQsPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEhBIyUGEMkpsuCJPV05sK6rfWAtnADUPgFSnK7MwsE=;
 b=Cg/5oaULFGDB2bk2FjTZT4knxisuOKsOg1IsargauO5d7Jsv+i1xMCiewv9jpBexOdLZSoyPZ1LPlUqiR4JgxMrZaQSYiKlyZHC/g4ekImSuACCEi4ljKkZ9mEvmKQOclmwngfIXKHLfP4d10B/1WF6nvzwhEqJY7ePYWGi7VRo=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.57.21) by
 BYAPR04MB4070.namprd04.prod.outlook.com (52.135.218.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.14; Wed, 11 Dec 2019 07:39:08 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::c3e:e0b4:872:e851]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::c3e:e0b4:872:e851%7]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 07:39:08 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCH] nvmet: Always remove processed AER elements from list
Thread-Topic: [PATCH] nvmet: Always remove processed AER elements from list
Thread-Index: AQHVkoMhq0HJ9KDTYUe4XHNQTdxotg==
Date: Wed, 11 Dec 2019 07:39:08 +0000
Message-ID: <BYAPR04MB5749A45B82AC14331E59E412865A0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20191103201310.24785-1-chaitanya.kulkarni@wdc.com>
 <20191104081338.gdrk2a4mlov2io6s@beryllium.lan>
 <20191104095034.GA3193@linux-lxv2>
 <20191104101935.lzdhraz5wnd56g4r@beryllium.lan>
 <20191108104207.7paup72lz2ipqynf@beryllium.lan>
 <BYAPR04MB5749B7B17F2DD6692922D41D86750@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20191205092357.q37ok6auxeyuvi23@beryllium.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 45aafd81-d5dd-4d5a-4cdb-08d77e0d34e7
x-ms-traffictypediagnostic: BYAPR04MB4070:
x-microsoft-antispam-prvs: <BYAPR04MB4070C56BBC34AD521B8AA8A3865A0@BYAPR04MB4070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(199004)(189003)(478600001)(54906003)(66476007)(6506007)(5660300002)(66556008)(52536014)(76116006)(8676002)(316002)(33656002)(71200400001)(66946007)(86362001)(26005)(81166006)(55016002)(8936002)(9686003)(81156014)(66446008)(53546011)(2906002)(4744005)(186003)(4326008)(6916009)(7696005)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4070;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rc5YjU180rHRjnbBwuslDXrw7vLf6xV09lZF3fTzwp8EP1Zv6i6be9+wGRMnDRJVf5tVEnyK9cAheVrrpfj9lyY3v+x5aXl+4LxSxwSzHxLUXQV/vk7+NIy/sYD6LUXLUqUfMo4YJjtF4nuNPORMeUQwOIgTaoAGUdtye3mNiKY+q/oVmMZo0+TT5cDQHM/KwPS5+49/YY1exgODRyOXIsv35nlrln1P2u9QF8IlGPtxj3Gmse3OisMg5YX6I1fFURVd5zWwDoEkRdxgV0arDXoqKfg78tzkeJGTvrLFcn0W2sktfzix1OD63/NFJuv3BQ3IqNMoeuZ5dh3UFA2mGUFSqyR8o7CpsizI16fkkvOmGk7bL4YrHY8ZdI1jmtNAZ93go1mEzTs9FPsn5RFu7rCWi+Ex9sqPiheSaHCBxGKwvGISgOyA02symS2fcovU
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45aafd81-d5dd-4d5a-4cdb-08d77e0d34e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 07:39:08.0814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1pBkDBP9pcotKYgdchgbH45NM301DUlz+CX0yxi4dZPV+tPD5gPOaxVQqF05wkQ+E+kohHKqnnC5CkU8qOzfLEkm+qE1o2/AAR+U1WJYw9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_233912_582239_D1BDF67B 
X-CRM114-Status: GOOD (  11.93  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Christoph/Sagi,

Should we get this patch in ?

On 12/05/2019 01:24 AM, Daniel Wagner wrote:
> Hi Chaitanya,
>
> On Sun, Nov 10, 2019 at 02:25:21AM +0000, Chaitanya Kulkarni wrote:
>> Did you see the same problem with the patch I've provided ?
>
> I don't have the hardware to test on. I was unable to reproduce it
> with TCP as transport and virtual machines. Unfortunatly, the
> customer decided to 'solve' this problem by removing the AER handling
> code in the SPDK stack and gave no feedback if this patch solves
> the problem or not.
>
> Since we can't really verify it I am not sure if you should pick the
> patch.
>
> Thanks,
> Daniel
>


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
