Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BADDFE942D
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 01:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTnUGFj44B/Fqeouxje/XDL/dZws4NTOa6iGVAq1fVA=; b=IF/40OxvWGvj8T
	rltRnWptFWlGTrsPuIsOUfNR02On/HwGE3rqct6BlmQ9PpY11e0ghXVwj7dNuL1NlpKV44hCIsnzu
	oseaQj+nGK8qG+T3MUz7sBW0TLq97JBAfxjU1uzg2zKBGyYeVfsWPQnVx/8/8tFS3FyHymxbwwx0e
	al5C4Yre5u0aiMlA2/Nqpl62WVpj5WnngIt38Tg8qNKaSPZ3FmozwLE9h0bbDidEVRwbZDvGZtVvD
	worR3TKirS5rJjFPVcGk/U2Chw6HWrkNwJvTXJ6ib/Yg+Kwu08AWbvILA37+1RXp0Nzsd6/BF/GrM
	4rQiFYaKiC9Hc6ZX1XZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPc7u-0005MZ-Ge; Wed, 30 Oct 2019 00:46:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPc7p-0005ME-6u
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 00:46:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1512820862;
 Wed, 30 Oct 2019 00:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572396372;
 bh=7XnGcMly4H4r86iV4yPtrefx2MJBReOWzxLcZQb+qLs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0mkvNHFudXsjSsDwXa5mKzL9ykB0R8fNNI3epi9uSvkNA3lnnZX+31G+83eQarzBd
 tdjtareRyeHFY7odTDx9xf7hv1OUmo8hM7EsRqcLEu3hvM0UE+rVv5vwU1DH71hLF+
 a0xH/ElyMhj4Ys9mJhkdSQYcvGoviHuWVtw949As=
Date: Wed, 30 Oct 2019 09:46:09 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: Fix parsing of ANA log page
Message-ID: <20191030004609.GA15332@redsun51.ssa.fujisawa.hgst.com>
References: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
 <8972928e-9382-3a25-5c53-918eb0a9fe14@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8972928e-9382-3a25-5c53-918eb0a9fe14@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_174613_274651_07AADD46 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@fb.com, Prabhath Sajeepa <psajeepa@purestorage.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.4. This is a new branch that was force pushed
to replace the previously defunct one with the same name.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
