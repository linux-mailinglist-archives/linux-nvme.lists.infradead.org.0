Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B1677D4E
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 05:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0kDA6Ojsg/tbiguDpUXUbcirDwPykBLyZfWrtE8j+k=; b=bVoLNl767W+j//
	NTFSPTGIyCGY06lLX8WZhFa9/t7O45dhGxSJCE5cx8tn4Ao1l8Q9cr9z9bnpIz+l4YookSelyjQlc
	QpM2exjqCZsivgj0h1e4yjPtPoO3WnhAnBwv8UogodKufM8ewCM3m4vqJUL2naf0XpQrJkKZym70Y
	qfVrHi8H3rV7P8g/FHJ5vJn17Bcf+ycnjeBevlQUA+bVoIt9hn3LGCQu76D3OaWG4ZX+RZeIUCL3w
	y84G3PbyKNZz80hJNDktGJCZ4IApZA75DYuWyjg86lYH7cyvr1hr3mybveyI/p6VapAbNxkBru5ow
	aKFkMUUsMtrwFQSD5KUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZbj-0001ua-8D; Sun, 28 Jul 2019 03:12:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZbe-0001tT-Fb
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 03:12:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id f20so17316795pgj.0
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 20:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+O8b8Qj8UZXyrNxri6qKg1TXaZPnY91OO21LUH7MMiE=;
 b=Vb4Nfv/2uhpTrlZCBpORgAkxYr1eIB4Y9aFUNMxLxsHQ0lAsvIBsCHxq7RuxV69Osc
 Qw5wTEKGp7XmQf2kW8rPkdzuoyO0ttnO56WzS+6dBBEqesk4LAfmvlLs/aV63U+r7yju
 byQYA69t2V608qigwyetCP2KhY6ELyX4dWsYrjgBZ8+00TnOxGt0BVPsJEsezuSc5CXQ
 KWiPI8Xr6NIrRkXxIzY0RHl8QnqVwMJjc9Qta1FH4T7ULqgNW4gcb7QNYk1UfKzH5lfA
 Wp0fTrYFtHFsldQ4p75fbufsYocZRcqfbxnIBvrLj21Cf1FhLYc/yveM3gfmQ+nITXnn
 QR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+O8b8Qj8UZXyrNxri6qKg1TXaZPnY91OO21LUH7MMiE=;
 b=p1FWkrEgzx7Wk6QfZNCVrv8HR7STDKJ+0ox49xCCsXZ55sCbEQN/sP+4fnPebwweWU
 va7SlwvyeTz6wXKPegcIhVZmRgds2lGrlZ3mE453woAZO289NaSCxOlTDR+uhbGMHwDI
 N+YUvEJBmYXjbDtqf8OSPbyNB+iKoYv0fj4i01tqbWNkYGvYoVAJ/bCdDRMK6mtZmn+9
 eG20Kee5GrUXx0Tuv2m6v8Jl4GXMO/hX+yxvVaSSL4VIVa8UmCGb7WH98mOQs7wgzAle
 oXLOY43AVJPiNtb0qgULMzcOQuZ+eVEN0neDKXoUukDYJ9CbqFa7wX9rvV/G5uAVJB20
 FHdg==
X-Gm-Message-State: APjAAAXPiFF73fQbJQ3UfPNElmt5+g/JlqQ2GuAtuW36uV0+PyePMiSt
 CtTHFm2wiWf/8ix73ULsWVyydbhbOns=
X-Google-Smtp-Source: APXvYqxrcYYFIaBfHG8mod2NX+YA94cqJK6GsMV7mqknm3zB6p+Tfq3bEdUdD4ZUQTQKhjhR94NIrg==
X-Received: by 2002:a62:8643:: with SMTP id x64mr30790637pfd.7.1564283531073; 
 Sat, 27 Jul 2019 20:12:11 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id q1sm78453586pfn.178.2019.07.27.20.12.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 20:12:09 -0700 (PDT)
Date: Sun, 28 Jul 2019 12:12:06 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 3/4] nvme: lightnvm: trace opcode name
Message-ID: <20190728031206.GA24390@minwoo-desktop>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
 <20190727184155.18014-4-minwoo.im.dev@gmail.com>
 <bf4212ea-8c08-61eb-39cd-c43a5186125c@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf4212ea-8c08-61eb-39cd-c43a5186125c@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201218_548576_68288A04 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Matias,

> We should not pollute the standardilized NVMe code with vendor-specific
> opcodes. The above code assumes generally that an opcode is associated as an
> admin opcode - this is true for an OCSSD 1.2 drive, but not so for any other
> vendor's drive.

Agree with that.  I was thinking that these are nothing but an opcodes
which could be not a pollusion, but you're right other vendors are not
suitable for these opcodes.

> Besides that, I don't think we should add anymore code for 1.2 since it is
> deprecated.

Okay, I think I need to think about how to trace the nvme commands for
the vendor-specific commands with minimal changes.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
