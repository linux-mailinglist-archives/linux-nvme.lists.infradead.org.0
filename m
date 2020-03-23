Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E351900D8
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 23:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4j9Qv8c0JUmCe9tPfM1Wwr5NtQEkPCNUw0BWGCJwwo=; b=PG4p4dm/r1A81e
	ZpOZL2002b9VlEDO8ExB0MZOJz11h57ktphAAZglUDxC8ONjN2wK2ipRCGdvmEt4VNzjbzqZv4SB6
	oBjudsfcFuiEFSIiB7JwWr7KCsu0DtdNDjx/cowQhrkjgAhwWrf635OqdifHRSQxAZyiaGrCnLtYQ
	W6R0QSW1x2RW7aojlsKx3TLpVUuYiCv9LSf6LDxGeKJjjBCSmUvBZMbZFmzVv1gqjk4HgRGa+cUxQ
	nnQ5pzQRTbpax0b0ubFdYXus0DmcDgc+RSbE9+aQ4Blm13IgBLJRcrPuqS1eLrgubagZGX0Cgq66p
	gwxUuBTpGz7Lxwj+kjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVBA-0008P6-3e; Mon, 23 Mar 2020 22:04:16 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVB4-0008OD-Mg
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 22:04:12 +0000
IronPort-SDR: 6rwzzqSZBIWl4PGZ6y+GN5zj+QNvomucoQOZOuKp7RG+YjelX8+NR4Cs1T0G3SyUeYLIw6Pc2i
 ktERVgmaOzyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 15:04:08 -0700
IronPort-SDR: wA3gMFWIUOCZDzR49j89cfO5hembkyd/mA6TotbIQXagc4KoiP0oTWrRQ0R8pzBI2oCsVwltW/
 eO/sINCBlNPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,297,1580803200"; d="scan'208";a="419659021"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 15:04:08 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 15:04:08 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX121.amr.corp.intel.com (10.22.225.226) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 15:04:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 15:04:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6mFzDFN9eS3O+8D/FBIqUeaRQA7WLgQno5EeS3+JIkRoIpFn2/gz7S2+OFBkhAtCCha8EYqEagxth3FlGPfBuzAzudhU12g6o6emlPaG2CyzyNRj/LEFOdSLgIVNkm4ihvLfU1t5XmQh8oEzxNd7kYJU6I9zb8bP87w+XVxr/vOmeAdnKXRfrs77yLV8KKGTLh/xwrXhLgLqL3dZcr9bseM1iQjtGTUiXzCK9LSoMdzezqhCMTwFLrWnZ/NHmFZbzl+n8hAUl81aCM3p2W7OwVVOgtcxhWc5eKlT6rDUKYQJGCI3UrUvUmm0AkPvaSHeE2DI+KnJgxqu+iqR6Ry+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dHG2LSoZ5ltWKSrjgI1u2qBoP5nTt4OjOUb1OFCI2I=;
 b=VumNDFZQ1b+LD528CDsdotga+X1h4hwRL47SomIbiZgTzReYRVL5sjthuO8Yry6fslLpV1kePKDCXZwhnOXDrbTQuN22pgpZLYMtXFYuiIYaGDD2bB37AhNjWdFeFwezwc+fKz7tYlGiIaHmvlSSjlRUA3EtM6aqPYF8MtTO14fx8+XgRzh0Xb6AMlw3UMw4DEXDBNh7nijW5M8VGH67Lm0YUiZHw17Zd1ny7lQTGBvwuEEqxqDl3oX+vPbysi2DC2+QDQFEKHfvkQY0R8KIVL+FL/bKrdVgOBh/+oNV07AyvpYyMwEVGXbjlEf+I+tmAACzBFpDS6IvWuLqY5sMEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9dHG2LSoZ5ltWKSrjgI1u2qBoP5nTt4OjOUb1OFCI2I=;
 b=gxniV/mwI0VRdBEOu8Hh/tO8VGUrFt6lpCm4uK2e8HT+fAwjIFye48LA9IKdk7f6LGgGukh430wvpqt2eofMb5GnuwLtWq8Pc0zNaOUPnwD5sRIpYf534knq/BxHD8F+3sIEYqzGb3I80UGi/S0se/M6MlfaNFMl/eXfJ0/k1SQ=
Received: from MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14)
 by MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Mon, 23 Mar
 2020 22:04:06 +0000
Received: from MW3PR11MB4684.namprd11.prod.outlook.com
 ([fe80::c5aa:a4e2:63e8:d7d3]) by MW3PR11MB4684.namprd11.prod.outlook.com
 ([fe80::c5aa:a4e2:63e8:d7d3%6]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 22:04:06 +0000
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: Sighting: Kernel fault with large write (512k) and io_uring
Thread-Topic: Sighting: Kernel fault with large write (512k) and io_uring
Thread-Index: AdX9ef3PKRC8AConRsKyiM0hXsW0JAAEXlsAAPLBmRAAAElOAAAAPf0AAAFDntA=
Date: Mon, 23 Mar 2020 22:04:06 +0000
Message-ID: <MW3PR11MB46844ED6C11993D7F5D911A8E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
References: <MW3PR11MB4684AEE8587BFCC0A9F41DE4E5F70@MW3PR11MB4684.namprd11.prod.outlook.com>
 <4eaa3e21-833d-f6ec-3b14-58dd2022a381@grimberg.me>
 <MW3PR11MB4684AC746EE60B9E5D0D46E1E5F00@MW3PR11MB4684.namprd11.prod.outlook.com>
 <82255be7-fb89-c66c-442e-6fe04239768c@grimberg.me>
 <52ce2f94-e11b-c537-63d2-e9b72cf1b00c@grimberg.me>
In-Reply-To: <52ce2f94-e11b-c537-63d2-e9b72cf1b00c@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mark.wunderlich@intel.com; 
x-originating-ip: [134.134.136.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e906dfb-48e3-4c59-7970-08d7cf761b2b
x-ms-traffictypediagnostic: MW3PR11MB4633:
x-microsoft-antispam-prvs: <MW3PR11MB46335D5E5A35F7B82D2E6FA8E5F00@MW3PR11MB4633.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(396003)(366004)(39860400002)(346002)(110136005)(81166006)(81156014)(6506007)(8936002)(7696005)(186003)(26005)(86362001)(8676002)(71200400001)(66556008)(66476007)(316002)(66446008)(64756008)(66946007)(478600001)(76116006)(9686003)(5660300002)(2906002)(55016002)(52536014)(33656002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MW3PR11MB4633;
 H:MW3PR11MB4684.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b+ZblhY4bv9NjktJwvLlvEuUI8xr9k11ZsN5sKvLlcsMcXOShtK0AlIRkcQcWybY6I6K28aSrQD4JsnH8PwyXil2rn8A5tY2hbjRgum5pnP3yK1ha3TJah3RI466sfEOCMEEh16g+UW3BcjedqSJ8ucSMDZRWshico0Iu4zzRDY5VVTi9WhI69qy8hnwAiIWjxYfHgjXWfweKr7SOw3/652bpTEoz72Kef2Z28JEnf3yFVqoHeVl1K/zPTCdNsKCtYbDmOXjysNH9jlSnEf61NDNS2kHZcm8Fe1I9RRhJvbeVti0H0km161Xiv4hWa3khkG1Y8lbFgGIb96l3zZ3UkyDxRv4+f/tLWTZ+xiOgRp0ErZSd9BQVTTIS6C+fkWIB0STsfclZPbirdtrmwWkVoPCeZh4aMB1QraMfCEFUrht1A49ce9fKzyu9FERucc8
x-ms-exchange-antispam-messagedata: 7eqPeInozOr8VQMQMdFf8lDbwvempwVSolCqWsXF530VPfKewofGeaVaL8yeqF6lXLkgJwtNlaCjA7pjXn8x6cPjeE4WApOx5lRXYo3qfu1HiydZZZGNjm1BAPWrRW3PvlEx9AykLDECQ4oDl6yvzA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e906dfb-48e3-4c59-7970-08d7cf761b2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 22:04:06.4531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZMULu4ZVqDyeO/sS5wHfQeKbGnDJ9L+AFMyPAXaUm9F+/QhTCukKm14V8F1N/G0mzkk4xG8tGgJluopxqwnAjYwNsMtTIQIHW8h5rbdwrY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4633
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_150410_825692_22B55522 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>Mark, does this patch make the issue go away?
>--
>@@ -2326,6 +2328,9 @@ static int nvme_tcp_poll(struct blk_mq_hw_ctx *hctx)
>        struct nvme_tcp_queue *queue = hctx->driver_data;
>        struct sock *sk = queue->sock->sk;
>
>+       if (!test_bit(NVME_TCP_Q_LIVE, &queue->flags))
>+               return 0;
>+
>        set_bit(NVME_TCP_Q_POLLING, &queue->flags);
>         if (sk_can_busy_loop(sk) && skb_queue_empty_lockless(&sk->sk_receive_queue))
>                 sk_busy_loop(sk, true);

Do not see the fault (on first attempt), but as part of error recovery the initiator is not
able to reconnect with target.  Another separate issue?

[  304.395405] nvme nvme0: queue 5: timeout request 0x41 type 4
[  304.395407] nvme nvme0: starting error recovery
[  304.534399] nvme nvme0: Reconnecting in 10 seconds...
[  314.636262] nvme nvme0: Please enable CONFIG_NVME_MULTIPATH for full support of multi-port devices.
[  314.636323] nvme nvme0: creating 102 I/O queues.
[  378.117435] nvme nvme0: queue 5: timeout request 0x0 type 4
[  378.123398] nvme nvme0: Connect command failed, error wo/DNR bit: 881
[  378.123790] nvme nvme0: failed to connect queue: 5 ret=881
[  378.124338] nvme nvme0: Failed reconnect attempt 1
[  378.124339] nvme nvme0: Reconnecting in 10 seconds...
[  388.357615] nvme nvme0: Please enable CONFIG_NVME_MULTIPATH for full support of multi-port devices.
[  388.357670] nvme nvme0: creating 102 I/O queues.
[  451.848084] nvme nvme0: queue 5: timeout request 0x0 type 4
[  452.096044] nvme nvme0: Connect command failed, error wo/DNR bit: 881
[  452.096428] nvme nvme0: failed to connect queue: 5 ret=881
[  452.096762] nvme nvme0: Failed reconnect attempt 2
[  452.096763] nvme nvme0: Reconnecting in 10 seconds...

And of coarse this does not explain why we have to initiate error recovery
In the first place.

--- Mark
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
