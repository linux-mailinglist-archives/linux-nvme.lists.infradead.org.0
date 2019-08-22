Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3A998889
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxlm3Drqh+oAv5JJr6lkck4GL2veFjFs7VFMT8Wi/Gs=; b=rcvSAiLNRydFjI
	hWhJDdC6CXFIJtQCA9S4gwVcDr+jYbBm6ruRsVbqcyBeuaJ3/xInDD1bzrpL8w4AStcyd6HU1Muqb
	aKEQEDnK4fB2dPjhpsFdJFUIZztPFFBaBtKYCYV91dTC59hAwjXz+siif+9DoEtXG+nUFqz9yeBEa
	eqmnVxkfdM57xpnFcZHmARuI3JgDeJsj+u3t6BGsyX8M6fKO5J3WgDTqvRodckSXCZRYsOne6P7kg
	42nSyVWUEC2h+7T9MNH8m75AbRNDpiU6YLIHrGwI7SiaD5lHyU/AqOedlku2zYqyjaF/J7nTvFBfn
	RxGFqHelSCM24STJhyGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b1c-0003s5-Mu; Thu, 22 Aug 2019 00:32:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b1W-0003rd-IU
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:32:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B7FFC68C4E; Thu, 22 Aug 2019 02:32:14 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:32:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 0/4] nvme: add support for Get LBA Status tracing
Message-ID: <20190822003214.GE10391@lst.de>
References: <20190804075050.14642-1-minwoo.im.dev@gmail.com>
 <edbf18f8-fe9a-f9ec-2fa1-75e22466b6ff@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <edbf18f8-fe9a-f9ec-2fa1-75e22466b6ff@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173218_776137_43B7B296 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 05:31:40PM -0700, Sagi Grimberg wrote:
>
>> Hi All,
>>
>> This series introduces command tracing in both host and target side for
>> the Get LBA Statas admin command which has been added from NVMe 1.4.
>>
>> Please review.
>
> Series looks fine to me,

The patches look good to me, but I wonder how we decide if we want to
add the full blown tracing command for various commands never used by
the kernel itself.  If we do that for every command the tracing code
could blow up fast.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
