Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E281B2ECE
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 20:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jpr4hyYyQG7bO2Mh0y83BD8bkikGJJIDl+IZLOquZs0=; b=KCEwF6fX141DqC
	ROcgFoROMwVVD4bGT1eoU5ftjUBy0vNg2H4Gnq2dJSP8RAbF92hfYpGv9jiHhk6telrocdMewaFPD
	KGLLoT6stbsYhgwglrIOEomuB6S3y8GdwP1zXbDorDbXlN1Tmk9M/J1TpPL9Fagtxf1SBnGKxhDCj
	/N/J64KBSI6ccM3ldssvcKl8Ua5XfT1qdB2Vl0OwXHCmcbW47uHBARa7Zni20iUVaPH0N3zst+YDi
	B+fuLA7yKbNaoglLeRKSjKaAJmneEBAoUVm1dqePLfgapNV56t3rUVUR+seSa53OlseoL++kYThw7
	XHUnbWdCKLpVNIlVmFbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQxN6-0007Ba-QD; Tue, 21 Apr 2020 18:11:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQxN1-0007A3-Q6
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 18:11:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4BE2D68C4E; Tue, 21 Apr 2020 20:11:40 +0200 (CEST)
Date: Tue, 21 Apr 2020 20:11:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: James Smart <james.smart@broadcom.com>
Subject: Re: [PATCH 01/17] nvme: introduce namespace features flag
Message-ID: <20200421181140.GB21283@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-3-maxg@mellanox.com> <20200421115912.GB26432@lst.de>
 <1ffeee50-9c96-495f-b82b-bf3873e95183@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1ffeee50-9c96-495f-b82b-bf3873e95183@broadcom.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_111143_988730_7E833BE9 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, idanb@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 shlomin@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 08:53:18AM -0700, James Smart wrote:
> Care to look at any of the RFC items I posted on 2/24 - which does things=
 a =

> little differently ?=A0=A0 Perhaps find a common ground with Max's patche=
s.
> http://lists.infradead.org/pipermail/linux-nvme/2020-February/029066.html
>
> Granted I've tweaked what I sent a little as there was no need to make =

> nvme_ns_has_pi accessible to the transport.

I've replied to the series.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
