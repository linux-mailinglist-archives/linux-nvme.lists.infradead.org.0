Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A939A0D
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 03:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ar5dsdxE+1+D0hxliWqY2wLvA5VIq0rRG+qdIL/XhFc=; b=T5vZGfP+4CZt5M
	LA3DMJ3qlSZ0y1RG0DH/oOgEGYPwJSwuDomR+VtFDWa9Gr4cza5ALQklh7wSy1VdKXp0YsqIrSrnN
	0PNqKi5Z0td6XiBAD2nSD7ANjm3yu+vWKgSy4Dx4DAqQtuAtLG4/gohtOcMlFoVQkKy3oTlVtm4Bj
	u7Kvp04KhM927vj8iIMBzl5n2JtsrdOAh0x231ZXVq1J15nva0M4ZIrBYIZIidZvvzSHRKa7I9OuK
	0PLE+GrNE6ufupBzPyQkuBN7cBPJjUljwbYmcLLMERin4MW+WbjZdNr3b+0KKBHEyX3i7KNoRYVmL
	iFO4kSt0YPXvwK368o3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZQJC-0008A7-Ia; Sat, 08 Jun 2019 01:38:14 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZQJ5-00089X-Go
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 01:38:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id bi6so1056639plb.12
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 18:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xfnVfrXu9HmkHXs6virA2ViflgRN/VFpcAlgwFSatvM=;
 b=ln28IybP1ygebmXYgj6GYTahGpQYt42oVZuTBHK75RGMxwnW12YPZKN9moLtMOFE9B
 QhWHejEGG6Ai5uHz2w/fWZB4S7fEjkRbN2dcfcZL3mAaL5dEh9oAiL1CM67LcTjZVQ3H
 NDoGZPLoqyD0S9zeVA4uMI/2HkaLecncZ4UR6NuA0BjnIjDQetzkt4g99o5MEIkjPO/a
 MJxrq1T2yefxO5dJKtpqYFRAw+AtuVUBhDAl9UWzOMXiyOlOItx9KOKWktfu893oeam6
 iuqWTCE1kNTbagvZ5+syoA5wpkop7DsF+7h1zVb++1hmMenriweFHwPp61L7kxZ5RlTg
 Y8CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xfnVfrXu9HmkHXs6virA2ViflgRN/VFpcAlgwFSatvM=;
 b=DI1AhPr2aKKidf+uP4jBOLUNdHxY3mCdustnbnYc71fvVqTWzUtZbOK5jP8P1VI9dk
 koMrVL6esfNfECJvGcmhzV/cHHOzyeU/kcrAFQKmXmL+0ISOWzjd075S1ywqq3QTlASY
 kUbyHs723cyrezM5w5ScgHI6SxKll+2Q69JJ/+DRCcWxI2YV1Xi/+mpZ2dqYuKx7yuMH
 s8VNiNJocuT5WMW5qkA6M46sZlED6k+FfnElRyo1bd0tXRvZ+hRV9wCEdRlxAWdfON6K
 qIYkaZ2BwpPH9fBA7On1ozStVci1Q6GCWtyahxxv/O1Ds7Rp68qbCCobF3GSBdvZewkp
 w1Lw==
X-Gm-Message-State: APjAAAVfp8fMjJv1ZNI1cusajUpcFHPCmx0FtGaK/XDyXBLe0gQKu5a8
 GbBUhVnDcLlVkHLEA7zWbGY=
X-Google-Smtp-Source: APXvYqx1A09aywnpj2c3w2R3VivTRKEZWvJvFsLgRbo7GIEElxQ6G/iBUASEXeP8Wy0HTBHZPO8MLA==
X-Received: by 2002:a17:902:2ba9:: with SMTP id
 l38mr52662756plb.300.1559957885956; 
 Fri, 07 Jun 2019 18:38:05 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id n32sm3276038pji.29.2019.06.07.18.38.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 18:38:05 -0700 (PDT)
Date: Sat, 8 Jun 2019 10:38:02 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V7 5/7] nvme: trace: filter out unnecessary fields
 for fabrics
Message-ID: <20190608013802.GE1276@minwooim-desktop>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-6-minwoo.im.dev@gmail.com>
 <20190607165244.GH7307@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607165244.GH7307@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_183807_556039_4843E63C 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-07 18:52:44, Christoph Hellwig wrote:
> On Fri, Jun 07, 2019 at 04:45:10AM +0900, Minwoo Im wrote:
> > If the given command is for fabrics command, then it should not print
> > out the following fields which are for the !fabrics commands:
> >   1) "flags" (FUSE, PSDT).
> >   2) "nsid" which is reserved in fabrics command.
> >   3) "metadata" which is also reserved in fabrics.
> > 
> > To make !fabrics commands clear, don't print them out in case of fabrics
> > commands.
> 
> Well, they are all reserved and shall be clared to zero.  So I really
> don't see any harm in printing them if we can keep the tracing code
> simpler and the output more regular.

Okay with that.  Please let me drop this patch out of this series.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
