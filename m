Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700A239A0B
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 03:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTYErKsPL5cPH6WBQ9rhIPUgvYYHpOZpadeesfC8XLU=; b=bQzGCh+5C+l5q2
	ib+7eFMmrX788QPZFubis2DpiXeWeLQVUNHuNpLEteZ1ylbdRcCzBClFR9WUg4LBMSgicp7ldQd9y
	A60UnXki3Cm+4GWwVvh/Px4H3XINzZj1kgmXHx3lFyoThBuDPfGYk0leP/NX+VXxGAf8Fn8RmTEEs
	6qzY50A3vGQhzcI02NeHcwR0iEOex5jcb/xuqAuNRgTf53fRqaPKvOIT/9MhYwaSC7KollGFJRu9g
	ZDAli5LFWg2y6HknfVrmu27wL7WsNwNelHhkEYfKuSd0fjIV7o3cY8shWfSdoZGB9B65AE3GCH7pl
	tLTgY1spcILMcbwU/J6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZQIC-0007xP-DM; Sat, 08 Jun 2019 01:37:12 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZQI6-0007wz-6f
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 01:37:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so2021151pgd.9
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 18:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=futYh5E6p2BnXOxGi/0G5/Nwbxa+OVXvlNBc54mEGdc=;
 b=L+ZP78Mut+zKkvv33qP4+rvznhGICxaBquTui+rzxS+4p/UJvrLPdhp6f1DNveQ4Ex
 j4vFkCMTSLeCkewJcNjmZCU1AZnTPVmbtweI/dmG/1znd6OvI/i8kbFxN/6M2NLs4I+4
 QB+RBdURcApcwQkyLWP6ftLGLHMgtDqsL7OrECo8/igLYNMwv3Ei0EIc+fnLbkNgN3C3
 vcWQs+yA/4jue1DsCe+YupNDhhOTZMCZlaTYxjipa5TcBuCa3AIg1yJQKpK5wX1qRdwb
 T5WNnJ3W7XhrDLRX3oCxwZ8XadBwBHJ0fZBaXirui9YV2Jqq8tnqTdFWOenWvTROV56L
 VM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=futYh5E6p2BnXOxGi/0G5/Nwbxa+OVXvlNBc54mEGdc=;
 b=HDv+w+uvD/LWp9QPLz32bQSyZlgAgCfLFHAvugK/NvqnGDohduTNPkCJqzvk4i2avj
 cDXTxDHs0Dn/G8XWEurWAd8kQ7nSf1aEZxWUGNv+NwFrih4tBFHYbPSSn2PaCj+TUdCq
 zRQsFKYqZMHnfYOOZ4jQ6d2LUmiQPHzVgaPQH4YEiCE1L1c6VXfW8NSGl66OFPWnZhpA
 yaQ/XtHgC/WCoqSAUu+QJ5YdISfLnzOIYFZnLJP37WuO/+0Do2+8tqpwWKC/KFsraDrV
 buk4bOkE+DnNxA7dlqEECTzKSU5OVorHe9jx9rHp5SopDWAZCglw5ofBMxn+qI/u3CEL
 no5A==
X-Gm-Message-State: APjAAAXNrrsUPQ6NAxEzffDMBDjhUS3dYrRrXOiZ1dcP54sylduH/u1K
 wNyW4P7kOaNMB5bXDNPhEPU=
X-Google-Smtp-Source: APXvYqymFrMQLa0ATK50osPV4Tug0LnODOxGTkVZUlYxCHHjRg/PnJN39B0HYBsqDHVedu/n6HMPxA==
X-Received: by 2002:a62:4d03:: with SMTP id a3mr63090012pfb.2.1559957824295;
 Fri, 07 Jun 2019 18:37:04 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x28sm3874861pfo.78.2019.06.07.18.37.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 18:37:03 -0700 (PDT)
Date: Sat, 8 Jun 2019 10:37:01 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V7 4/7] nvme: trace: support for fabrics commands in
 host-side
Message-ID: <20190608013701.GD1276@minwooim-desktop>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-5-minwoo.im.dev@gmail.com>
 <20190607165156.GG7307@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607165156.GG7307@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_183706_248806_68922E43 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On 19-06-07 18:51:56, Christoph Hellwig wrote:
> 
> > +#define parse_nvme_cmd(qid, opcode, fctype, cdw10)			\
> > +	((opcode != nvme_fabrics_command) ?				\
> > +		(qid ?							\
> > +			nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :	\
> > +			nvme_trace_parse_admin_cmd(p, opcode, cdw10)) :	\
> > +		nvme_trace_parse_fabrics_cmd(p, fctype, cdw10))
> 
> The indentation and use of braces looks a little odd here, how about:
> 
> #define parse_nvme_cmd(qid, opcode, fctype, cdw10)		\
> 	((opcode) == nvme_fabrics_command ?			\
> 	 nvme_trace_parse_fabrics_cmd(p, fctype, cdw10) :	\
> 	((qid) ?						\
> 	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :	\
> 	 nvme_trace_parse_admin_cmd(p, opcode, cdw10)))
> 
> 
> > +/*
> > + * If not fabrics command, fctype will be ignored.
> > + */
> > +#define show_opcode_name(qid, opcode, fctype)			\
> > +	((opcode != nvme_fabrics_command) ?			\
> > +		(qid ?						\
> > +			show_nvm_opcode_name(opcode) :		\
> > +			show_admin_opcode_name(opcode)) :	\
> > +		show_fabrics_type_name(fctype))
> > +
> 
> and:
> 
> #define show_opcode_name(qid, opcode, fctype)	\
> 	((opcode) == nvme_fabrics_command ?	\
> 	 show_fabrics_type_name(fctype) :	\
> 	((qid) ?				\
> 	 show_nvm_opcode_name(opcode) :		\
> 	 show_admin_opcode_name(opcode)))

I'm actually fine with both.  I was trying to make some depth from the
previous comparisons. But, Okay, will fix this up in next series.

> Otherwise looks good:
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks for your review, Christoph.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
