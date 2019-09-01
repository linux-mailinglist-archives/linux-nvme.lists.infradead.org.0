Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8ADA49F5
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Sep 2019 17:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irCv5ELh05lDPgdZek2VQ02VSacpY3UqLIpxt9PIopE=; b=JpkHobeN4k5Pg4
	a/FWwX5CwaBGP+e8RmFMo96TCTTsQ9g2dpd+fIo93z2kQJ4pU4UAGUiv28IkNMEskDNKKZ9IPZfvQ
	gdeq1UvzKwsEGyY8RsRxdrEd5b8tcymyC+4/KF8Rco5+sjeh9bru4LYa7yGxIStbUfgLd2Y5mf+J7
	vZftvKol/1Qp8bgwakdd/8bYM1YYtry5bFx4KMzeQ5N5AgNW+p63LnVuIltiaj0OXIqui4haFoPFC
	Vcl0TzNaZ53LpeML+r82a0l35JdGKDeQY+k2zVFEc62DMvZdnZEeXciEOSyD3bAOzRXGVCDKoD/Z9
	yjMVuMlsgfENYdgUmUDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4RVh-0004fa-Ap; Sun, 01 Sep 2019 15:11:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4RVa-0004f9-FO
 for linux-nvme@lists.infradead.org; Sun, 01 Sep 2019 15:11:15 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF2BE2339D;
 Sun,  1 Sep 2019 15:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567350673;
 bh=Z8sw3tgY7baK8L+iD4h9oHAmm49CXzTyqfWJlt83eNQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kqM7exBraOp5iaUAN++hPDm/2dtfP5jNbq4TeEl9pqe3ShAXIioeCOMaHdnFtvpMO
 FPTwWb9//7KVFwY5+DPcXtBQzyiCvyB0iFLKBX+TbbM71AasSGtIKKswWSzEJI3mwt
 bP5iv/bZKChvGMdxjRz9/FeZ2II34cZ7+Dgsruos=
Date: Sun, 1 Sep 2019 09:11:10 -0600
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 0/5 V5] nvme: Add type of service (TOS) configuration
Message-ID: <20190901151109.GA2515@keith-busch>
References: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
 <054fa45e-a2ee-d291-4c71-75f7a1872f9a@grimberg.me>
 <43fd7638-a5da-1ca1-0a3a-e86c3e287f4e@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43fd7638-a5da-1ca1-0a3a-e86c3e287f4e@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_081114_542695_98EFC7A9 
X-CRM114-Status: GOOD (  10.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Israel Rukshin <israelr@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 02:18:51PM +0300, Max Gurtovoy wrote:
> 
> On 8/19/2019 9:49 PM, Sagi Grimberg wrote:
> > Applied to nvme-5.4
> > 
> > Keith, I think its safe to take nvme-cli patch as well.
> 
> Keith, was this merged to NVMe-cli ?
> 
> The series was pulled by Jens for 5.4 merge window.

Got it now, thanks. Hand applied due to some other conflicting churn.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
