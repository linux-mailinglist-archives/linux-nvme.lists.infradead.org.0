Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36BE1335C1
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Jan 2020 23:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NDuwVHmsOVBdAwlxILZSfy5WtWw+yuTSUVfJymndZw=; b=VmsyT5ijl7J0Ph
	huNlo2yyDud8a6v7Bdmw5hUALSOyzGNn3riHry1zXJzyQdx3Wfg7VUckOL0Hb4DP2ugY0ERKmc9nO
	x43awe59MKvc5lk3K3ECkbDbMpvHtDYnsFJW3MjL18yVwvGJmuIeJzVBUFn+ihXqLgdXGI57wMju2
	e0QoEjGdbvq56K2BKIr1JhHu+zjPrHb0sLD9ZyMHrA4qt8Z5z+um9sE/RwG/KtCWCyFWq//YHkleZ
	pzDIp2A28cKc5+TPOoJiIWZSpDQU9E6uZNAZUiEn22jT1qkIYgEmOY/4yJEpZUvSvq6th++Kx3qXG
	lXRI5/5xD7qI3TxuTjXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioxNC-0007eI-23; Tue, 07 Jan 2020 22:30:50 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioxN6-0007dJ-LV
 for linux-nvme@lists.infradead.org; Tue, 07 Jan 2020 22:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1578436245; x=1609972245;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0yu/e1APmDyrOiyqfuBQvh2sEg4lzG89R8qZG0pTiHM=;
 b=BXVa3XP17kkurQnzQ/hSDTFJ2p9p3ClymM5hnmVnbXc5HnuMU1CG8CGN
 RZHCXOvgycRmP1v4vCesSbu3Fw82xPGcLO3drTPWtEzeo8jB5bRlodSzg
 UxVENbe0A5aPOwfjuNDsbL9Ek8YQwCB3h2fFOP3vkHx4XwBlj/mY/FLg/ 0=;
IronPort-SDR: 66EUQz2oAEeoZOeuh4f8ntEX+LesIbMW+YTYwydU/0vOpC8CDUarfk2n6Yy/a3UmN3AzAZwQ0C
 egJ7V36XHmpA==
X-IronPort-AV: E=Sophos;i="5.69,407,1571702400"; d="scan'208";a="18687284"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 07 Jan 2020 22:30:32 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-8cc5d68b.us-west-2.amazon.com (Postfix) with ESMTPS
 id 59101A20F3; Tue,  7 Jan 2020 22:30:31 +0000 (UTC)
Received: from EX13D11UWB003.ant.amazon.com (10.43.161.206) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 7 Jan 2020 22:30:30 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB003.ant.amazon.com (10.43.161.206) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 7 Jan 2020 22:30:30 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Tue, 7 Jan 2020 22:30:30 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Subject: Re: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Topic: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Index: AQHVxQslydawp/BwQkuXvP0PUEOjWqffygqA
Date: Tue, 7 Jan 2020 22:30:30 +0000
Message-ID: <d1635bae908b59fb4fd7de7c90ffbd5b73de7542.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-2-sblbir@amazon.com> <yq1ftgs2b6g.fsf@oracle.com>
In-Reply-To: <yq1ftgs2b6g.fsf@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.109]
Content-ID: <7A4476106396C040A8D83784CE3F10CD@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_143044_746611_226B9CED 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju, 
 Someswarudu" <ssomesh@amazon.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2020-01-06 at 22:32 -0500, Martin K. Petersen wrote:
> Hi Balbir,
> 
> > Allow block/genhd to notify user space (via udev) about disk size
> > changes using a new helper disk_set_capacity(), which is a wrapper on
> > top of set_capacity(). disk_set_capacity() will only notify via udev
> > if the current capacity or the target capacity is not zero.
> 
> I know set_capacity() is called all over the place making it a bit of a
> pain to audit. Is that the reason you introduced a new function instead
> of just emitting the event in set_capacity()?
> 

I did this to avoid having to enforce that set_capacity() implied a
notification. Largely to control the impact of the change by default.

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
