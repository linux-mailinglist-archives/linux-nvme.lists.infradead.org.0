Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E9736F04
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 10:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SKgxp/hNNtWqhwGa30KaDic7rNZ1+armJEy9P2GS/Q=; b=jCBvCx5jsGJeFd
	TfJqpA49scI7b7iHBdPMyNJxjTVoPbiwDXBsjOdxX+IF37NfIa+6Hr6HDbX7mu1K1+kGmfbIvsJn7
	BoMrKj3Wt1fDy/j0ekyPVHW5vLH/Qr2T7Ilr8kwHKcXSz80+sQYus1GexhKmoJRZaz4yuSUJm32iQ
	5iTzuQcM6FG0s5XszRnR57mfWRj+t98XYONkERsnolbppSDxGuUa9oP6CpYa72TWsU7+nKRBTQGSj
	Kdql4lE08Ei8ocV5naUJnb3/yKGeQ3ZqGisQhmlIE6aeejEW7L8KvureM/PZ7vhIBSHcKFDVdYs0I
	u7ACg/+Y9gx2cjPFgdhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYo1u-0003y2-1V; Thu, 06 Jun 2019 08:45:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYo1o-0003xb-7x
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 08:45:45 +0000
Received: by mail-pl1-x642.google.com with SMTP id g21so657322plq.0
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 01:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4loRy4Dgdc5MDx3YLnlsAr6Hdsiwx5WRXkbpIV1usMU=;
 b=Jh+igu9hF3QhPjpOSt64sYduOb5/K3tcjpwIv4qmRrKFpLgyPXNr0hMPKcCN2dLRFK
 Qo8Xa44rvqEDZaZFOZ4zi9S87hrFjImln9LhyrAn0JXUCR8r6dA5s21UnqFjNCc2WJHV
 d5T2tHnpkcIy9qUgH6E7sGOYBP21iXup9TWOn2Fm+L0o3tC7NmCZ7Zp0RW4KA0LUVtq9
 Z+40EeMtjam24nw+GPeBZ9Ex/4ZpLFYCWC1ViJb2nwyZB5IZF+c5k73CCsGGaSljI3qK
 UUHtu24eyJVFBDZMBMrBX84Qe/Ne//p4Z5aDl+SoSFR/gBn8LLNRbgu8M6DpH0pczdi+
 YWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4loRy4Dgdc5MDx3YLnlsAr6Hdsiwx5WRXkbpIV1usMU=;
 b=GVhNar3pOM70FJCYPRvA11LkoQgVZ3Ij6dIciBVuYv7Kzw4eTwv6SaT9nddRI8vVZ9
 Ahk5SbOhF1OASul1uqzyjEVrSJrc7H+bax7XJ74f0PuAJBC51MoIGFtYEnYQl+vLE4XB
 b+31OzGNa8Afm38VQHhkR9pYyOnyE7cLXofEoUYUjvGsPuoFzYwpa5mqq/db5l9LYaLx
 JKU2LmUMbWgF2o5fnTFPRa2bZKU7/N6fyLbOYJsJHs0qqZosJjS0twQZxtdTNO63n6HP
 5Khi6I0bSF5yuEOO/3JINSZzEm+Ov5i43ikdjoKK/C/06egAETSUWtemYI/I+U2CniXv
 5m8w==
X-Gm-Message-State: APjAAAWd5d//PxCsZ2EU+L4H3+pz7o6iTtWeC8ss2s5JEAh0aTg8Psf9
 9VGUemQFBL8Hw1Xf46NbDh4=
X-Google-Smtp-Source: APXvYqzna4dxQSFEB8ey8vhQ8WZ9zmfnOoh7WG21SJqB287WgVA5CGB8fkdD+fTy0orXWnliZFjY5Q==
X-Received: by 2002:a17:902:ea:: with SMTP id
 a97mr8470170pla.182.1559810743372; 
 Thu, 06 Jun 2019 01:45:43 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 66sm1310860pfg.140.2019.06.06.01.45.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 01:45:42 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:45:40 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V6 3/3] nvmet: introduce target-side trace
Message-ID: <20190606084540.GB18020@minwooim-desktop>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
 <20190606063229.17258-4-minwoo.im.dev@gmail.com>
 <20190606065153.GH27033@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606065153.GH27033@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_014544_287377_912AB855 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-06 08:51:53, Christoph Hellwig wrote:
> > +#define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
> > +#define show_admin_opcode_name(val)					\
> 
> All these bits can probably just move to nvme.h, next to the actual
> definitions.

If it's located in <linux/nvme.h> that would be great for the host-side
trace code.

> > +		__assign_disk_name(__entry->disk, req->ns ?
> > +					req->ns->bdev->bd_disk : NULL);
> 
> Tis looks it will crash badly when using the file backend.  I think we
> need to put a neutral identifier in, e.g. the uuid or something.

Sorry I didn't think about the file-backed request at all.  Thanks for
pointing it out.

Will also prepare V7 series with this updates.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
