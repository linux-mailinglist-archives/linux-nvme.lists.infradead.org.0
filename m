Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0742E1EC8DC
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 07:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Wm1o2eSQc1kCTn7OTF2lcvv4F8M4ngtwpLsqa1W6OAU=; b=dNSpA5l82dkxna
	R5iuRR55YtQ6T48IGD6cEZ5JmeyzNwLRCN8CZ6AsZ0d+edqgsG6mhZciI8ZwzAFfPq1ZV54WXpdkv
	fMTeFpSwAdB3/5jISzJd3xMshtgUce91kiVNKYXg+zhoiiU0swAZfB6L+8IYY6ZA3ytZgwYfyyqC8
	c+Tm6POAip9huej1UqLgIvJL9/pKpXRs1W3O5TUi4HqwNI+la6DFYqpdsi8JnvLfOBStn2enqBri3
	PZlMpPjl8+7OXp+OlSOBEVf6Savm8+tG/0BpubIMR46A/PsgKj3SjWjNHE6VY1tjF93eCFUdEueWB
	ygdYuwKFoETOkn14+1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgM2d-0000uS-62; Wed, 03 Jun 2020 05:34:19 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgM2J-0000gU-6z
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 05:34:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591162439; x=1622698439;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Bp8Vy6wu34swZuqPGoCAgpmMx5i3h6jSyZiouKqqYRw=;
 b=J+G9oAoQ9sW/SFWnnqWhiDpWj0axo1M8s93WUURvK5CQSJorxKdac3sw
 5XU+pB6Ua2K2fjXteDctx91i2Gm1cDfsAzyWM71cPceAxspBJW2I5LRkZ
 KtUlC74QzpkhwugL3bbXYexiiMxRpbXkkBT+cz+WRGya2cQunNR5HMArO
 dk9xH2HBHpwclC3yPGyQmzF7asQ7mPNHYLTr/p//AzhURkJ2S4eLsNU5j
 05RydL8NxvP8yWorBfwtpf+S/ioSnGtEHR1zG649iTB0+W6jgQsqY10Uq
 l6NcNzpIXcJ0QoowJpqCvJNEu/XIXr2EX+rvpn/gLf5gl62DLaswj/HKh g==;
IronPort-SDR: PZ4Qz/ehn1BJEBEPeXXADgOm50PsZyb0WCEsJOMTqJfSLQDuyGnOkO41/EQvrM/r4TcFdUdVLG
 H+jr7fmU1dPLPBZtD0QxTgjGpveVCVivjRThnBuLIauc28PVXvfZIr33SScsm7Wq1OLNypu9nD
 QEkFrJFraqaWuCrZiTShEgqkW+QKtPa/jcC7wpFa+cUL24bvosMWIGtZ49/+mgCFVj+82nImuf
 1eeLihDBHvYElY4mJEUYbbfi1TO2ikAZKAbRvZvxz8hThUKg+Yw7GqILOJYz6SHqOu3dl3e21S
 e8k=
X-IronPort-AV: E=Sophos;i="5.73,467,1583164800"; d="scan'208";a="140508014"
Received: from mail-bn7nam10lp2108.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.108])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2020 13:33:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FUelcwhKRFJPuxe0l1BiBc8cTq31MFd5a0tHpDdPHc3K/TW2JzHO+b2Fl0t0Jwb2R1SCll4Vgoq9XBFQepCZslbvyper9N+TECxAU4WFPH3CYMRCtQltJeTpyfZ//AYb1eDaCOaOWWJIUIQCP8OgZeyW0461BJx4xWwoqGUv7W19CRO8oZxwWsvyuEXs71XY69IRKQp7dmdjlHemhk0kkesb+rNVeQeDNucfp7bGQWOGB8xT1pM7oHPebJA7biXmrJYCz5ot+U+LygsfJvuji1//eDF07/JbGVnrMlmDbAtEj67uyOhB735KCr5LKVRgAUyCYl74K29rYjMRCgfSBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+giLXa6UmiZ4gc5WsnUSN9PPlKS/Puk9KDNYSv92Gk=;
 b=QOnSBPVJup+EzCFP7rC5vH6rKQWwxp/YuuHEMbfbNxCOyFpOzv4FNAvfvzuZnZ3Hgh7Fyo4F6QqtSvnRaiqqril3krb9XTo56mElvmB2XIz/rNkP6Hay3p2WZepkAmgXqLvtFC/GyUBZOd4HNR3hGMA5gc8h1GjnmHWvcJEkPX+dlMl/D/aJmhPwxQfdhWgsrLjm54q/nPsws2dg5vH2zelYignKEy09RMoY6uzXZtVmaiArycSDfu/tDZZGSTaCgxLRAPsS6A1f2QcTojUp4bmX3xU7w3BiTlbXqtSqJALYghsyYnVDK3xROeAygaxnnfALlgA0WM6nis0h65zwCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+giLXa6UmiZ4gc5WsnUSN9PPlKS/Puk9KDNYSv92Gk=;
 b=JGx2H9wMYTTk8cMqxzsWkT2DDsWznNSAkw8grRMSy7DTUz0RBSzvvirsvIBYxhyI9juntxbka9FPTib+uJm6+fR5MwXasiUhpELITf8mAis52mx8dlkbeID53HQlAdlt2AucphaSiJJvTiqJfo5TzMe9Plng7BerNj5KqVGlwEI=
Received: from BYAPR04MB4965.namprd04.prod.outlook.com (2603:10b6:a03:4d::25)
 by BYAPR04MB5624.namprd04.prod.outlook.com (2603:10b6:a03:10c::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 3 Jun
 2020 05:33:55 +0000
Received: from BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::4d72:27c:c075:c5e6]) by BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::4d72:27c:c075:c5e6%7]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 05:33:54 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "axboe@kernel.dk" <axboe@kernel.dk>
Subject: Re: [PATCH] block: remove the error argument to the
 block_bio_complete tracepoint
Thread-Topic: [PATCH] block: remove the error argument to the
 block_bio_complete tracepoint
Thread-Index: AQHWOWXqUYqhayQIgUWtB3hVp+qtNA==
Date: Wed, 3 Jun 2020 05:33:54 +0000
Message-ID: <BYAPR04MB496539E5B95C312F4194D68586880@BYAPR04MB4965.namprd04.prod.outlook.com>
References: <20200603051443.579748-1-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 673cb566-2968-4ba5-0598-08d8077fb4e1
x-ms-traffictypediagnostic: BYAPR04MB5624:
x-microsoft-antispam-prvs: <BYAPR04MB5624AF8BC6ED3108D954728C86880@BYAPR04MB5624.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Q4zvIKkM+xUZrCRP1+1NKYMi8/nk1Iy5XZF5EQTMx/AWWMF0+8Eksiybe0JHgv3NJiQVIcJj+AB9GCNbGrIbtGc7Ln6TPHZ4oG0j8Its8HguKvJuVvl+O65xFdGq0q7+ywvNY7ws4a9B+4ZjXgpMrYMQ1Tzl8XIgx4K5E1RdrGPaobVLRPTwqTobyOdlDaqY8hKUziYSmunb6geV+6YFFiyUxJgiuBJYnZhL0RdJsFt9icQUe8t+ZHbc4WrsGu7UgNE9MhkJpPBA9r4KAKeiPIxurtzQEOxVG5qsD5o3KYUhDGjfJQ1SmKNQ/YjsRNM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4965.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(110136005)(54906003)(53546011)(86362001)(9686003)(316002)(52536014)(478600001)(6506007)(26005)(7696005)(186003)(64756008)(76116006)(4744005)(66946007)(66446008)(66476007)(66556008)(55016002)(2906002)(71200400001)(4326008)(5660300002)(33656002)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: TriyCtAT1qFWsgng/3gVR4mWT3WDSyeezODWeJF5GoPFTTkh//sOuDX+ltz/ezOfj89M/7Bt/+lKGsHYI4tWtHHiJJzN2kYP1Sa2i3UXeOoltOJ9NUBeWrh9/f4MCvZi/TMCFS8Y5NXeip9yTqUfbCxSSGeMEa1sD4j3vgIm1E9vOj4ySToTA1Pk401XFYQusvRDHbetJZW/h3T9o+hp2d5OoD/TKEAXj/QLQC+OMoLOoqmHpdpxMGVj0ZQvM1nI2yb05e7CIR6MrKi1VSH23VtA0aTeoMECzFR7jm2Pgjsof2Ip1+PI9+G/TUWZlVxWlNYzLfw40QEOdZfDtsxcbNvvShjIE6V6ZF28GDOBlZ+lNUylBiZhLzW9ulTeGJbejWgeUX45D9BtYVex2K1or1v6hX5wc/nm48uIetJm1OgW6SgDrYZH/5BTCbcGY5Wlcg6prv8IWFakeSAflzL/jYmIoqLXCJVVK1OJRnX6jwQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 673cb566-2968-4ba5-0598-08d8077fb4e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 05:33:54.7533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SD8OlDTk2MnykukUU3e7eLv4nwv0PRr0KH08A4tWYhGveJ99ymbbjiXYVTUeLIJxuyG3uMMZ+tKiGhqn96fsDN5qwghmuC9sfG9dqrasvBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_223359_413332_7C043EDE 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "hare@suse.com" <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/2/20 10:14 PM, Christoph Hellwig wrote:
> The status can be trivially derived from the bio itself.  That also avoid
> callers like NVMe to incorrectly pass a blk_status_t instead of the errno,
> and the overhead of translating the blk_status_t to the errno in the I/O
> completion fast path when no tracing is enabled.
> 
> Fixes: 35fe0d12c8a3 ("nvme: trace bio completion")
> Signed-off-by: Christoph Hellwig<hch@lst.de>

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
