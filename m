Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E44C1C17A4
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 16:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbcPFYHet1a3L6EmIQcp8t3waVuRq9O18PlvoSFRISE=; b=fDni51cwXD9GQo
	7Kjn6Jr6yIqbCv6G6ttG4r1i3QVg2mZfx5LytxkLCXsm1iP67XyKR64vbCzxuWeIDOoI3h7x8FFwL
	PVtQ7VzhdoWGJY/Vl/6T1lb1d6Iw07znfMvnrdPpcVSe4uwV54wC9NeOJAP/BKzT1aEwsMDBd3pnv
	AkTikEITI1R+sv+6E8kxTpIH1AfoVa5Stb/xJfcVMqc75Zclp72TGxFn7cEgxVfByE/mrxZfeEYON
	oRXfq0NaZPqVBGDk8y/OMFRrEsgPL6PZGA+O/BzFv/yDiOv8LCqR9JVPR7hYN5B8mFSMonwh3/dD/
	3j9nCMjEF+0Ki+a99DGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWaI-0003Ql-1R; Fri, 01 May 2020 14:24:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWaD-0003Pn-KE
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 14:24:06 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 66C4A68BFE; Fri,  1 May 2020 16:24:01 +0200 (CEST)
Date: Fri, 1 May 2020 16:24:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 01/15] nvme: introduce namespace features flag
Message-ID: <20200501142400.GF7197@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-2-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428131135.211521-2-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_072405_813378_F7860C3C 
X-CRM114-Status: UNSURE (   4.51  )
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
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhpcyBzZWVtcyB0byBicmVhayBsaWdodG52bToKCmRyaXZlcnMvbnZtZS9ob3N0L2xpZ2h0bnZt
LmM6IEluIGZ1bmN0aW9uIOKAmG52bWVfbnZtX3JlZ2lzdGVy4oCZOgpkcml2ZXJzL252bWUvaG9z
dC9saWdodG52bS5jOjk2NDoxNTogZXJyb3I6IOKAmHN0cnVjdCBudm1lX25z4oCZIGhhcyBubyBt
ZW1iZXIgbmFtZWQg4oCYZXh04oCZCiAgOTY0IHwgIGdlby0+ZXh0ID0gbnMtPmV4dDsKICAgICAg
fCAgICAgICAgICAgICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
