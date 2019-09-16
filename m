Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B436B3E52
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 18:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HOOWBQn4yiWS0jnlQoSIzqB/9JGRl1dQZBThOgB8aDk=; b=KBs54cbH69Wzn3
	vQr/jcqvmeu2S3Fvm3YAAUPUoHfyfv8DqqbbqR+gFQrbdxca2gOm/tYH3epFzjPFeFz9qynTuZoVp
	vPAE+Du8jhwHcmTx8sRFERCOzB+Nnzqs7xN9j3iRWJz4B50Tlj6kNo/EfU0KoyB6K+srhMFRalqO+
	sbf7TgRWlQSnBeUyxH8SLPM0YFUP9Wlj83J+flGtwZ3dJzWD9GL1MNKo8qsxvp4Ha0Pi0Ne685aHF
	TggMUJy8rFSUbMhy3iaZLMFyJUreHyncw36lyML51s0/6rsqvukOalZjql9fZMkQ4+1eOJafJfJQd
	EVorDbmspkoqwlC5x7WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tRT-0006oM-4N; Mon, 16 Sep 2019 16:01:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tRL-0006nv-Qn
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 16:01:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6232968B05; Mon, 16 Sep 2019 18:01:18 +0200 (CEST)
Date: Mon, 16 Sep 2019 18:01:17 +0200
From: "hch@lst.de" <hch@lst.de>
To: "Singh, Balbir" <sblbir@amazon.com>
Subject: Re: [PATCH v2 2/2] nvme/host/core: Allow overriding of wait_ready
 timeout
Message-ID: <20190916160117.GB1455@lst.de>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <20190913233631.15352-2-sblbir@amzn.com> <20190916074153.GA25606@lst.de>
 <c51a4ac0b974e6efbd4f9d67adc8a70ae94ac325.camel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c51a4ac0b974e6efbd4f9d67adc8a70ae94ac325.camel@amazon.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_090124_013186_A0FEF3EE 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "sblbir@amzn.com" <sblbir@amzn.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "kbusch@kernel.org" <kbusch@kernel.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:33:31PM +0000, Singh, Balbir wrote:
> > Then again I'm not even sure we really want this.  The debugging use
> > case is somethign where you can easily hack a line in the driver, and
> > we really don't want normal users to mess with a random parameter
> > like
> > this one.
> 
> The reason I sent this out is that I've seen some controllers setting
> this to max value. I suspect there is no good way for the controller
> to set wait ready values either. In any case 128 seconds for a failure
> seems a bit too much, specially if the controller does not respond on
> boot and hence the debug option. I don't expect it to be used by normal
> users on most of their systems

The problem with these tweaks is that people will touch them for
weird reasons.  Another one is that a module parameter is global,
while many settings should be per-controller (although that would
add even more boilerplate code).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
