Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99A3EA47C
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 20:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RBHcqYnv1SRJvbbzSdkf5rotMMEirKVKrS870kcNG5M=; b=hsoh0x/G9DB+LD
	E8uhsZDBRPKLKEBeQ8AJnhs1ArmpsiPe/ZIvC4tFskC+V1NTO5nnAKkSjRThHI19uhWn2wQP2MWzH
	kShmboQJ/5OvWgx7+MfOJWC/q/7dE0ErQBboMkCQmAITxItOgwDkQLTu50nYXG92iYenA6/L0sDpg
	tbPEYkUJDPmmKbjzqUf3pUEQFW/TI6Tg/IHF939wqxv9WBkIt2qm9P//q++S5Cql1BPCEicQf5iT4
	p86epVE3sA6q3Ox/JyFHr5wK/ZvFq/dJcWlsscy+wquRM3ln8t1axd8MVu11jnLzxv8QWU7+2qVUA
	+nlOnbYZP5bXZPwD9Kig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPu76-00048K-J0; Wed, 30 Oct 2019 19:58:40 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPu71-00047s-76
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 19:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572465515; x=1604001515;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=7fvut1icy3HpLdm3YrqlQxNZNPZAvvZrBQTM87IWvbU=;
 b=LukHfIUkOenweqmRQbk1eC+Da9aihUKInyT5hS5vykEcIvJB3NMXRVuR
 E2p1f2HaHnENBuKzXwcvIlq9T+gLiQur63aRFvnptZRCGwmnBRg5D1Wvj
 jBjYt7FHLxLuvhr+k+lssFr9ba++ju8UyRgkHB/PNNTyLZBLdjVI0oRG6
 3c8LfljSU819tfBU2a4Qe4XlUpQkRZhn7yXnPDP1AHEW/Ms9EvzbrnzMw
 voTv4vEytYDL0sVovuxEC/UH42KOQ/b9ZvVxdk2MHxiFg5MAFmSmhE699
 QBNKv02VxobiP3O/rjEvLEoP3wJxjW6b6ZKRFM3vlsVTsPdaV2bFmP+r1 g==;
IronPort-SDR: hDdK6Wz2Zb3+D6neVNu84EoEd5NYAOoNVuSQ5id9D9HHCII49dVjXdTPL+rhC5dMmt5wWhVeCC
 G/F4tJAFyWgmPHeG7kfuHLWlAHLAzk79ev/dzECbGPOO4c0w7pCML3Op89dR/55uOm4/+H20nR
 l+MzdD565tZs8PGgSRUUsjduVwVyAEq27OUS+iga0OK1PYEe5XsEeqqGvC5lGkGOWhjbnVsiyl
 o5C1F9jLbFImtspBdREeUm7hPMM1UL9ZBFIvJWpBajTWrU64rkvwHkFrDq4YX6rTWezPzhnTyQ
 w90=
X-IronPort-AV: E=Sophos;i="5.68,248,1569254400"; d="scan'208";a="121731953"
Received: from mail-bn3nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.51])
 by ob1.hgst.iphmx.com with ESMTP; 31 Oct 2019 03:58:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8YDnjG8EdqBz0QgOIy+TOTWZrtWsk8IkJA4lgVXZNU96rVLVTiMa6r3nSMpYcQyXCfi6nqiY36VT2XQc/zuQl2EACudM5K1DU+ZANItbzXjNWoB1/Fm8SZEFo3Z7bWMJLg/Nt2W8LgdWs57EAnjlGVN0dYHB0BKQIpUGaY28PI71tGTVHcigZizkeQysBSlHdb/pt8Y6rk4El3vHXA2QYyxE1fx+hbRhCbqxoNRym0b9713PY8JqOySqjr2wm0chFQriYcyke0iDQnNQl7KUabl5T8J+VeyZKT2Z0AGsFttZyzTVvMg2kQjonKwAH7ZTpQVp8WTG3JhKAiDKVPtrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7In7shVqQ9uXNX9+j7iIcb0igzZCEhOJ2dSzRju/+A=;
 b=ZV7hcestIu5MzhvisOseZZssNSRSdHJwRL7N7HBffS7Aux2evPncLgXxlzGlTd5p4eLVzTFyZdg+AtvHY1f4y7+GKRVbcOsvb9S3uQ/LuC9sN7h318dDF9rtixriWH4kCOL97o9ijnI5KQZwLz6AZxVk+gqYYqe89rA4QbIWdoWhyQKrqrL/BBBRyQie+hyxr/lnOFGGwLr1pOyqwt/O4ZaWCpb1chojABq3fMvcgZxhnDsi9N1NlbsceDdTndA+0Oqu27obx8GDwlabufGe4yawF8wOV1RzZiE8WTG0d7qMiBvt6d5x3lzv9EAIxo9Gay9qk1V2d5rZAxPwiloeRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G7In7shVqQ9uXNX9+j7iIcb0igzZCEhOJ2dSzRju/+A=;
 b=rkU3s/SwtQXlcng2ZExYjlkCLGaN5PMCasxpRlSspydpnNjNR6HYzgixSlrHBcF6fpOIgf5a7NUfvo684tkpcDxgH+i+Xp7GmtZwm4019jWm07wntXzdc2zPA9+WDwKG9lIjAx6dJ3vk6wrHXIe40A5VvD72zj5bcrDV7ysIq5o=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.57.21) by
 BYAPR04MB5271.namprd04.prod.outlook.com (20.178.49.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Wed, 30 Oct 2019 19:58:33 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::34a1:afd2:e5c1:77c7]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::34a1:afd2:e5c1:77c7%6]) with mapi id 15.20.2387.028; Wed, 30 Oct 2019
 19:58:33 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Daniel Wagner <dwagner@suse.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [RFC] nvmet: Always remove processed AER elements from list
Thread-Topic: [RFC] nvmet: Always remove processed AER elements from list
Thread-Index: AQHVjzYhgmqnvQGm+02Suay/wXEq1Q==
Date: Wed, 30 Oct 2019 19:58:32 +0000
Message-ID: <BYAPR04MB5749158C2EBD47FC48A79FF286600@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20191030152418.23753-1-dwagner@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f6cb92c6-92c6-4062-0ffe-08d75d738af4
x-ms-traffictypediagnostic: BYAPR04MB5271:
x-microsoft-antispam-prvs: <BYAPR04MB52715BADA6842BCDDCFBEED786600@BYAPR04MB5271.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(39860400002)(366004)(136003)(396003)(199004)(189003)(64756008)(305945005)(7736002)(2501003)(316002)(53546011)(186003)(6506007)(99286004)(76176011)(26005)(102836004)(52536014)(14444005)(7696005)(54906003)(74316002)(3846002)(66446008)(33656002)(256004)(66476007)(6116002)(25786009)(2906002)(110136005)(5660300002)(66946007)(66556008)(14454004)(8676002)(66066001)(478600001)(229853002)(76116006)(446003)(4326008)(81166006)(81156014)(6436002)(71200400001)(6246003)(9686003)(476003)(486006)(86362001)(71190400001)(55016002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5271;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZsqYO+yV7FAjp29DJlg9sYYlyAdF1B+JsXidZFe4X6b4tdyT3XFGQZOqajG3Yp5I8eUepRBEigEzYpHjWcRCoU4IG3Fb5lzS95uzfqmJkm3tgKrEpDacj8OyxwH8gxlC5fo2xiUluQlgs+dlxrCj0YK3WhgZpGbUOu2oVnPzs/9ZT1AWSi7v5bvIWgucZRIHQJknI5l/JN8tW1DKQrYFx5aPirXCbHfUXYkEuxsn6/GFHPL0S+MPNBFsBENBGMjrLgENKPxxdrLbYSCjtpyTwv4g1oGVZd6RrMYui54I/cAP6rFX8vzvgAcqZHv5VsuZpMBeG27aPfC7GPh7Iu6NUtzNBgvIiVM6+5ggufql+LjO9CnRSxOtERu1QOmy8nNhazgNJ7UV7rE5NiJ+2TYFhwm+KDnJR4x+h/25ZB01Cok6tB2hXTlZeDaXW2pkMr5E
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6cb92c6-92c6-4062-0ffe-08d75d738af4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 19:58:32.8318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xfMHjrxZCeXkn+qLBsNeRAn2dKR6sUZTqLGlYpl8Xe7wYOv36jzInAyQikXOAPiSpqaPpzg6mQPAdgHAhFxwPn/8wWEbgWzB0ts6YCw68mE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_125835_297258_77C81328 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 10/30/2019 08:24 AM, Daniel Wagner wrote:
> Hi,
>
> I've got following oops:
>
> PID: 79413  TASK: ffff92f03a814ec0  CPU: 19  COMMAND: "kworker/19:2"
> #0 [ffffa5308b8c3c58] machine_kexec at ffffffff8e05dd02
> #1 [ffffa5308b8c3ca8] __crash_kexec at ffffffff8e12102a
> #2 [ffffa5308b8c3d68] crash_kexec at ffffffff8e122019
> #3 [ffffa5308b8c3d80] oops_end at ffffffff8e02e091
> #4 [ffffa5308b8c3da0] general_protection at ffffffff8e8015c5
>      [exception RIP: nvmet_async_event_work+94]
>      RIP: ffffffffc0d9a80e  RSP: ffffa5308b8c3e58  RFLAGS: 00010202
>      RAX: dead000000000100  RBX: ffff92dcbc7464b0  RCX: 0000000000000002
>      RDX: 0000000000040002  RSI: 38ffff92dc9814cf  RDI: ffff92f217722f20
>      RBP: ffff92dcbc746418   R8: 0000000000000000   R9: 0000000000000000
>      R10: 000000000000035b  R11: ffff92efb8dd2091  R12: ffff92dcbc7464a0
>      R13: ffff92dbe03a5f29  R14: 0000000000000000  R15: 0ffff92f92f26864
>      ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
> #5 [ffffa5308b8c3e78] process_one_work at ffffffff8e0a3b0c
> #6 [ffffa5308b8c3eb8] worker_thread at ffffffff8e0a41e7
> #7 [ffffa5308b8c3f10] kthread at ffffffff8e0a93af
> #8 [ffffa5308b8c3f50] ret_from_fork at ffffffff8e800235
>
> this maps to nvmet_async_event_results. So it looks like this function
> access a stale aen pointer:
>
> static u32 nvmet_async_event_result(struct nvmet_async_event *aen)
> {
>          return aen->event_type | (aen->event_info << 8) | (aen->log_page << 16);
> }
Can you please explain the test setup ? Is that coming from the tests 
present in the blktests ? if so you can please provide test number ?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
