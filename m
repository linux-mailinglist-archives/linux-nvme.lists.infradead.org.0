Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5954121B9E
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 18:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=N+tNBxXTWfqz5xsop85KbIzx+G19jovDWAHEw0Q0jUs=; b=rluVRS96nBC3T3
	F3OXM3X7nrVtg7yh2+q7BD8NEc0YUgsjL5eJ/OkbaLOXBQslNldBSMWSlaAW++GVDivJD48WbYe2i
	K9xX00CzIH9Flq5u7yvZynGPYwD4SczTzVvFyD6oFYwf4e4cn79YuaLDowV4+yFdp2df3iZgvxjPr
	StmRjaSX5ZMHnKYFta+d709uhIfmySeLiNdLBFSnYKJIW2grsMeNOS3oUxi+2kLab3+9GBLaz/dLt
	F05piIBpF0Ep3oFSaVKRW7Ex2T9xqoWpec2P7lhEaUREIFWp6uwJm/965UeBecZDNjbB5sH406nMn
	Pba/QrZUFbo8OC3zzLcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfj5-0000ZX-IM; Fri, 17 May 2019 16:28:55 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfj0-0000ZC-IF
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 16:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558110531; x=1589646531;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=N36pZnAq8h3LXyCSjtG9nBVHNdneJFR2NgMHhCopqR4=;
 b=I9e5rmrzb3OudpvhXVEc6lEvrINpvLuwdlUkocOdHQx5qbK2Iapdn/jo
 Zk+HRNmWsJfZNts34ji64c0PfPfPNQB00QkmTVMND4oQoaSRZ1xvdoSED
 gnM8q4yRcHJt1tDy8d3ou9EKY4t6PWdZysTGj6VMZNToIt8JuhytGMiYz
 4UDwdiMKPk3KU5wen+hCyT4cJ+gsTx6q2j4rlH1xJPHLJm9cHkFb16r6d
 8pBqH3D+WlIj3S1COneJ9rAQ4AbvEAYMbYBpDPhytyQDXB+0/o10VHo8R
 fwijFXygn8K7AfkRY0m92jywNTN0OI9x8+0kZdg2g1W4bWEiiiZzE1Y2n w==;
X-IronPort-AV: E=Sophos;i="5.60,480,1549900800"; d="scan'208";a="108524862"
Received: from mail-bn3nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.54])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 00:28:47 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o5krLRlrNH+784bik+qWGOzi84gj+Ejnu33+JetIFX8=;
 b=fIc0bz8FZ384i+21k2JdfPSVyiH+xnjdSRx+ctpzFOH9qiXd2YlGhIDSrlEdf0p74QeMbE4j9MKJ8s8/R0TnVBTC30W8bTWCiI9MIWg508SA8yRc+iXBVNQy5Ot5h3/X1sJs/6t7KT2vdJyL5eW0OhEWOVuK8p3Vk4PTCBMS0H0=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5312.namprd04.prod.outlook.com (20.177.255.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Fri, 17 May 2019 16:28:43 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 16:28:43 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH RFC 0/4] nvmet: add support for port based io priority
Thread-Topic: [PATCH RFC 0/4] nvmet: add support for port based io priority
Thread-Index: AQHVC5Zw0HHmAWB3kkOtFOboR7RbrA==
Date: Fri, 17 May 2019 16:28:43 +0000
Message-ID: <SN6PR04MB4527B78B40C2B1D11355FA9F860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
 <20190517094545.GA26412@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:f9a6:10ea:e679:e2ee]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e332d50c-5155-4c86-7300-08d6dae4ba8a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5312; 
x-ms-traffictypediagnostic: SN6PR04MB5312:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB5312B98E4BFBB99277BAC7DC860B0@SN6PR04MB5312.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(396003)(376002)(39860400002)(366004)(189003)(199004)(51914003)(68736007)(476003)(4326008)(46003)(55016002)(14454004)(53936002)(9686003)(486006)(54906003)(446003)(229853002)(25786009)(6436002)(102836004)(6246003)(66946007)(66476007)(66556008)(64756008)(66446008)(2906002)(76116006)(91956017)(73956011)(81156014)(71190400001)(7736002)(71200400001)(478600001)(72206003)(6916009)(256004)(7696005)(186003)(86362001)(76176011)(316002)(5660300002)(81166006)(33656002)(52536014)(4744005)(6506007)(8936002)(6116002)(53546011)(14444005)(74316002)(8676002)(305945005)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5312;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AHH+PjFgyrBu9mU8wwGjNGqHbRU5YNeNFIKZ8NCEspcpQGyGZ43W9NntZ+7SQFCnajI8O+S9TRXsgc0OHo8fCZn7w66yMfK68BQuCKR3t3Nveyezntw1jF0kuXW3Qb00M/Wk9mKxbJewILIrav/YMDz60SuQjTQzLy2YbWU0lRK2oAy8MfBVPviXmW6f4w/4mDYscouOEwG4Duef+edUJ8rubPDjRqEjZuhl/PVDkkfptk0t53xezRww0lgOvbUaAWRhaXu16GJEtzouN+CeJJgj3lqTS/RGiGIIffZU1S9rQpaDTLrI13IzUA4RivWleLi2gQ5MuS4OjpQtY2DVMxCbkQyMPmheh+QRV+YUMt5qRiFBFJIAXa1szFBrc1qUVk4elED075mgQ1XTgkgBwrHdR8D/7gGRoKYjhoZ60Zs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e332d50c-5155-4c86-7300-08d6dae4ba8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 16:28:43.5628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_092850_654899_6E1636DF 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "jthumshirn@suse.de" <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/17/19 2:45 AM, Christoph Hellwig wrote:
> On Wed, May 15, 2019 at 08:21:04PM -0700, Chaitanya Kulkarni wrote:
>> Any feedback is welcome, I'd like to understand if this approach is desirable,
>> if not then what is the right way to use the io priorities on that target side
>> so that NVMeOF target can take advantage of the scheduler infrastructure ?
> I don't really see the point.  Why would we treat I/O differently
> depending on which port it came into?  Until NVMe has an actually
> working priority scheme trying to hack support into our infrastructure
> seems rather futile.
>
Okay, thanks for the reply Christoph. Quick question, when you mention

"Until NVMe has an actually working priority" -> host side support for

priority based block layer request -> NVMe Request processing with

having weighted round robin priority SQ for NVMe Host  ?



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
