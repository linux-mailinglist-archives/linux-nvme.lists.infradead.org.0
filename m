Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAD423C38
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 17:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAsVZr2cSr4G9TiR05gTTGSGqaAKRp4CkD7SowJ/kO4=; b=PLs0c5Yt5n7xGK
	66wWIEYsnGdXCsz+WOyTLALo8jCJDZc2QcbqvxBkQ5Xbg1IRoAmrquW8jp9m4TYbGkr9G3zS6Xjk7
	/6XBK7vfVTujJBoCq2JCNm0qWCJs7kPXctwclcHKVHCfQEkOGWX38kSpecJZQQztRU0ZssW1xL4TU
	zYhrwTwJQdYdKnOIIjkQZ4BV1+5EKpSl84+a5O0vTiF/2ENoLfkk5B7TR05S2SvjPTw0yGjvrPknh
	KjC97PL09diAIC6fvSzCxlUk6jzbGEPNS2AQPQCSwnyLGGa+vE90OSAbAnd2F53B6+/ma3NXEnldR
	zTazSKmA1pU7LnhKFXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkKA-0003xL-4C; Mon, 20 May 2019 15:35:38 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkK4-0003x1-NP
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 15:35:33 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 08:35:31 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 20 May 2019 08:35:31 -0700
Date: Mon, 20 May 2019 09:30:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH V3 1/4] nvme.h: Fix typos in status code values
Message-ID: <20190520153023.GF25092@localhost.localdomain>
References: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
 <20190519183913.3493-2-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519183913.3493-2-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_083532_817198_FBC7DDF3 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "Busch, Keith" <keith.busch@intel.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 11:39:10AM -0700, Minwoo Im wrote:
> Fix typos in status code value.  linux/nvme.h in kernel project is going
> to be fixed soon or later.
> 
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Applied the first one. Seems there's still issues to resolve for the
remaining.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
