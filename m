Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E538077D6E
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 05:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vdhke+IeAmbxY291hq2Ln0wyHQ21caGI96Gc0E0ZE2k=; b=KXHeeUnAHhLEWP
	QuLuVwGmLI9C1EQkpuVJEDeiV6D+dBCLjAnRyVG7XTYzl/e2A8Pdu2Z7nXHrUG/jnub4rQ4CJ5TNT
	hZGNLdMMmMZA429wclfCI/9+KfP3m5Sg1nIxmbWlaaQioMAhg9h/xMIGbBUCN1fHCOBRtv2Icu4iC
	dy9kzZ3vSIjIgS/ApcN0WwlENxBxXedTQp3hCX+JUDABfDi83iSNjaXrdB56h2oKsjKvPPGlJ/SIE
	eFz2ncZVarMuW0ONte4qBtknIPyy2b6pKIB/gLfzZ4uHvmJ0IMrLnvNPPlGsNtQkAgvtMpGrZ4Lzo
	F/vknvIgNbnjtjc0wFVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZfc-00055y-Fb; Sun, 28 Jul 2019 03:16:24 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZf2-0004qk-HP
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 03:15:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id x15so16203417pgg.8
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 20:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3OayMARV1bJl05STMjMCklKU1M3bnIGMAp5CVUPDwtI=;
 b=ZjCms4yn9Nz3YRTsMRseczlDeI6BP7iPwBWX9V5qxNj1u4z/XKH/L113UmHEmWQyou
 cVQWLZkcgwcEoJXu4cKeNsjB3kuyopWEiK0/QD8ZJ+1i7Um8VXXCQcCU6s8TCi3n9SO/
 khfSHFGbLGCwBjvYKeOW+Jh5OZND8ZsqxwUC2Xk8yfadpvI0+KR8NczhK5zbbQthRIEo
 4auMLKW6AhNf9qALyIr/9KzD9YiIcOXhyXdn2mE4ndzLbPRtwy3PRjgoacn6zlevnwCk
 OzHOwm6IGmFNofHXvTWXp/dVistrBgfngfYowUB8wCP1MobUVtFJEfss4NhS9aDgTwlc
 81Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3OayMARV1bJl05STMjMCklKU1M3bnIGMAp5CVUPDwtI=;
 b=Ka0Ax+bYQL/jE6EEIFHhIR9H5uHRNRg4c9vARUlmOUXlH33R6I7phk7dmC1wQR3o7e
 gLRvTmjA1RVFXm91tWPCyxHscuCB6lKbSsGFxxJjPM6hsh2loMAr1Vtb2I7s1c9Dov0k
 5BGZhwNhkbC+072uwrAZXffsoz62mECNcObssNxhjhMAs341NHJjrEPQz8sYxscKOjpF
 pLloZlnGLrGs7S+TlBX0mUGH85VdIRBWuaI/oSyeLzh39Jo36JDbugL9cLDSL7LDpdxd
 AWFdu0oaD46H2xlLIOgSBqi7oh7E4hH4+DtCtris3Wwc8FziNFw4OuKM4JzMS+ueP+9y
 Q8Ng==
X-Gm-Message-State: APjAAAVB4ktjhs8cl1zxR4O1c+/b/0kun/L7aZopi97wVmN8AdvB43ap
 09NUylmTECFPWiz5DeBLaow=
X-Google-Smtp-Source: APXvYqzD437qZqdMtTIB8G7tU8hmOmaN1JmEhbvGozGCAGhv1Qt6+O8LzXKKsmH1YI8ApaGZwsu8CQ==
X-Received: by 2002:a63:c64b:: with SMTP id x11mr97928336pgg.319.1564283747655; 
 Sat, 27 Jul 2019 20:15:47 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h1sm71986881pfg.55.2019.07.27.20.15.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 20:15:46 -0700 (PDT)
Date: Sun, 28 Jul 2019 12:15:44 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Matias =?utf-8?B?QmrDuHJsaW5n?= <mb@lightnvm.io>
Subject: Re: [PATCH 4/4] nvme: lightnvm: trace opcode name of I/O commands
 for 2.0
Message-ID: <20190728031544.GB24390@minwoo-desktop>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
 <20190727184155.18014-5-minwoo.im.dev@gmail.com>
 <97cbcbd3-5887-ec8e-dd43-ef08d612372c@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97cbcbd3-5887-ec8e-dd43-ef08d612372c@lightnvm.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201548_622337_7BA87ABE 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> It can not be assumed that it is an nvme opcode for any other device than an
> OCSSD 2.0 device (the command opcodes are allocated from the vendor-specific
> range of the NVMe specification). The trace code should be updated to take
> that into account before using the lookup value.

Okay!

> As a side note, I appreciate the work being put into supporting OCSSD, but
> for broad adoption, the OCSSD interface is superseded by the Zoned
> Namespaces (ZNS) technical proposal that is under standardization in the
> NVMe workgroup. We do expect a lot of adoption in this area, and have the
> kernel code ready when work is ratified (only at that point is the TBD
> values allocated). I hope that the energy that is now being put into OCSSD,
> can be put onto ZNS, as that is where we will see broad adoption and
> long-term support in the kernel.

Sure, Once it gets ratified, that would be great to put the energy on
it.  Thanks for the info, Matias.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
