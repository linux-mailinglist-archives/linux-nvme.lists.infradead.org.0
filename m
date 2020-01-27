Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F72149F6E
	for <lists+linux-nvme@lfdr.de>; Mon, 27 Jan 2020 09:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttJigN1S1Y+OpLeY0oQavErSh17ioz6C/ul7MfmYGSw=; b=XyYyb8RBUOKQHP
	95sZmW/0I5Ff6H7PqqmO9FEpDYdj3hJJQ4DCDmeZgZMSp+MLLlHLoy6mK3VD0yMCoQ7Dbk+0DBki1
	ToJdOOk9X06/sq/USr4+yVzcjY/ddWG2c60mHW0k3g3aHVPZHoPp1k/dF46+XE7ykkeLoWD3rLfYj
	S3gOSgC9OVHq5JTKJggtMxpum7FDmzdd7VQMnfqNJ/lcTWJyscX3WWaMO+sLbCVyRQTEYVbwwOrKC
	c0QTah2b7FR71RKASEbwiMwEHbCTwKL/5QCVma68jGMkClu02E6b4oI3Y0pjVMbEx57roLU4OBIEw
	s4GQyFaL1hSn0iVstewg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzO5-00046f-Q7; Mon, 27 Jan 2020 08:04:49 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivzO1-00045r-Jd
 for linux-nvme@lists.infradead.org; Mon, 27 Jan 2020 08:04:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B30BA68B20; Mon, 27 Jan 2020 09:04:43 +0100 (CET)
Date: Mon, 27 Jan 2020 09:04:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: configfs code cleanup
Message-ID: <20200127080443.GB30513@lst.de>
References: <20200126203544.4819-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126203544.4819-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_000445_790782_AB3C3795 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 12:35:44PM -0800, Chaitanya Kulkarni wrote:
> This is a pure code cleanup patch which does not change any
> functionality. This patch removes the extra lines, get rid of
> else which is duplicate for return.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
