Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40FDF00E5
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 16:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyQLypFhTG391ObcZIVJzwWc98Vz1K9dznHy8ijJJXY=; b=oOHuM9KL9UukCN
	6FIfUxuhpBiSJvlug32C+6sYwoEApKPHFH9fV3a+3k2oujAVVVKcae+1WHnoVLHmtBNrUZ7VyU9Ra
	D7+nmxEHr7/o9tUgaHhrzMME3KnTcSUu/S+6Z2IKR2O3sDn4w3esCdh9XYNekykCBORHWiZ/JMsBz
	pu72vjDgJ6oVRhzdH4OCmQhx5FABimLW52lRKxf6kUqwZjx2vM1lMGKU8b4s0RteteA+6oOBLRdSB
	F5+Ohy0jfLJUyhjtUakaiq2Ml3Y28DWn7FoGmMydvlHEIAK1vvm9vOW23DD/a5HTL2DokPV7Cczi0
	/fM1ZMBZyKW7sZ9syC7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0Wo-0005jR-Pe; Tue, 05 Nov 2019 15:13:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Wj-0005iy-Op
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 15:13:51 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A686214D8;
 Tue,  5 Nov 2019 15:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572966828;
 bh=xTDTFYKndj6rEK9/XMWlmX2/TT209hCAwwXG6sjNXus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hi3+//vI/Eprg6+8j3xEpWTZWceGdxTS522z+0J7Aicp7zkI5v06Hg+EH8lm2okg6
 V7CYhuESHrh+DqM24Ey7e+X7fLIkjQtIBKMqK8NsOuazcppYJk90lFw4hWevZcqD/U
 MT63QnTqfyOuSGKvWvrMUpj3J7j42m30qj4jqHJk=
Date: Wed, 6 Nov 2019 00:13:42 +0900
From: Keith Busch <kbusch@kernel.org>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH 4/4] nvme-cli: ioctl: support 64-bit ioctls
Message-ID: <20191105151342.GB22559@redsun51.ssa.fujisawa.hgst.com>
References: <436860210.90381688.1572941457980.JavaMail.zimbra@kalray.eu>
 <20191105134530.GA2462@keith-busch>
 <1803760845.90444797.1572962758500.JavaMail.zimbra@kalray.eu>
 <20191105145824.GA22559@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105145824.GA22559@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_071349_827655_B2C38BA1 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 11:58:24PM +0900, Keith Busch wrote:
> On Tue, Nov 05, 2019 at 03:05:58PM +0100, Marta Rybczynska wrote:
> > It's based on https://github.com/linux-nvme/nvme-cli.git and applies to the
> > current master of that (66652af38042fc9624a8fbf25a325a788ccd3c82)
> > 
> > If there's a better one to use, please let me know.
> 
> That's the right one to use. That nvme_commmand usage just got past me.
> I'll fix it up, we should not be using them from user space.

Fixed now, sorry for the confusion.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
