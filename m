Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F23EE3D1
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 16:30:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmSi4cfgIFBqWMqdfrXaLjEhrz5A/PbEkMpArF+wSYM=; b=VK8ormB5VZ6rI6
	EJnYei35ox3PeC082TQ95R8a01N/NvXAume4jFJd1/YDmwHFCRAdWz27DQ8NMgg3Q8rtN0YMI3fj7
	MjeOLi3RWiZtm1xbz+i6y9ZAtk78rOWx4BObQ/ZxAJn0V8wgMpWvGA7tsxWk/CmA5cujI1sznF5Ir
	gKbGQi6H0Gb/tDzMHm33TJmZe15vjX5joAoxQ+GvQTncKGO60BSCDGiy3lWmhpLSxtEJ82UVp7MyL
	UTwRIVXdoT9Pv25gbi710Bw90UBXnm6hb1gQ9WPUB/bbPHkf6HIiZYUF7O03PEH8rBrQoEt99dqyT
	sYCO8OGcQeouNDdJGxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReJQ-00043n-0D; Mon, 04 Nov 2019 15:30:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReJJ-00043J-LQ
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 15:30:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BA19A68BE1; Mon,  4 Nov 2019 16:30:27 +0100 (CET)
Date: Mon, 4 Nov 2019 16:30:27 +0100
From: Christoph Hellwig <hch@lst.de>
To: Charles Machalow <csm10495@gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
Message-ID: <20191104153027.GC17050@lst.de>
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
 <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
 <871357470.90297451.1572879417091.JavaMail.zimbra@kalray.eu>
 <CANSCoS_MX97_JyLkKrZ7YjTS9L+JsZcPsHpoZ-keA8t3W394Dg@mail.gmail.com>
 <266047531.90300507.1572880575232.JavaMail.zimbra@kalray.eu>
 <CANSCoS9A1XY4DzdBwGU4+oT-uKvpohxhyWxdJ1ySJ6QKv6moKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANSCoS9A1XY4DzdBwGU4+oT-uKvpohxhyWxdJ1ySJ6QKv6moKw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_073029_849959_389F31B3 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Marta Rybczynska <mrybczyn@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 07:20:43AM -0800, Charles Machalow wrote:
> The thing with that structure is if you use it with the old IOCTL, the
> result will go into rsvd2 instead of the first 32 bits of result.

But if you use the old ioctls on the new structure you can at least
expect that.  And with the added explicit padding it will at least
do the right thing on 32-bit x86 as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
