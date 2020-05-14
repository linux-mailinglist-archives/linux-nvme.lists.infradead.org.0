Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB61E1D2CC4
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 12:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiTcFlIx2Qx07/lG3NASHfzHsP3VSmdTHvlzOAPj3+8=; b=SuaxEQ37tmobqq
	KId3on9xosdQq4+E62MSNTnrbQeNGsLgDZA2HYdl7fD0CKiXU17AR1ERPuw6ImhLsnsVbWKlpq1Bm
	W2CTDu1QBWxu6NchzXgFue5JH1J0FSRZ2s/O6EK2BRf63rEy8lmF1hajX9VRaUiurV2vxjR66sX62
	u3pE1lRPefqOA6DpQyUuEcH6Dy6lggndmn8Jklx9pj5veu8uOVh0YSbSLHXn1TPawv4TjgAodUZmT
	lg8YIkeIHWgKycwTqM8Pax72Rbs4pZfuYXMWWVBks5mrtfR9HonWyWYZbbUc8O0Yg4I6Oksl8Y9jn
	eT0dLV0PPniU51AuB2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB7H-0000BM-Bw; Thu, 14 May 2020 10:29:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB7D-0000Ai-39; Thu, 14 May 2020 10:29:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 03CE368BEB; Thu, 14 May 2020 12:29:20 +0200 (CEST)
Date: Thu, 14 May 2020 12:29:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 29/33] rxrpc_sock_set_min_security_level
Message-ID: <20200514102919.GA12680@lst.de>
References: <20200513062649.2100053-30-hch@lst.de>
 <20200513062649.2100053-1-hch@lst.de>
 <3123534.1589375587@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3123534.1589375587@warthog.procyon.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032923_282737_628A6431 
X-CRM114-Status: UNSURE (   9.42  )
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 cluster-devel@redhat.com, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 linux-block@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Neil Horman <nhorman@tuxdriver.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 Vlad Yasevich <vyasevich@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Jon Maloy <jmaloy@redhat.com>, Ying Xue <ying.xue@windriver.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 02:13:07PM +0100, David Howells wrote:
> Christoph Hellwig <hch@lst.de> wrote:
> 
> > +int rxrpc_sock_set_min_security_level(struct sock *sk, unsigned int val);
> > +
> 
> Looks good - but you do need to add this to Documentation/networking/rxrpc.txt
> also, thanks.

That file doesn't exist, instead we now have a
cumentation/networking/rxrpc.rst in weird markup.  Where do you want this
to be added, and with what text?  Remember I don't really know what this
thing does, I just provide a shortcut.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
