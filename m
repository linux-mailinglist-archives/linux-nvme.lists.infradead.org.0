Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A755839283
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:52:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F21NWiPzT0yPy1UjsKK4agLEXpBTS/RpvxXeqryYom8=; b=OgI3AdIhJRy3vo
	6SwTuy7t55EDVtViOrpZJgwpBtBLHmxalfrFEuZHIY59usRHZAkG55YMamgwif3wtXrkAVt1HX7Ym
	5vhoGRnKtvf8R26xcSvok5L98T1VFq8iZFf+qK9Vk+pjuJRiEI8q/0DKT/c6+1ItkWnJF9Y37/qhc
	4bKKOBW1ibBBHQb0To5LlMNUH0V5y/b4JLjl9ea46qC7t7QQJKJloCUEYwlV1aaOemF85ur2uaKUp
	mNHYa1vTypKzGW1kdcguliNPJ78tPINpKIF1ewwM9i9diO5oji7Zz+0SCIpiPajPnULaklXmn4ibe
	hGo5SB+5pK5w38tygykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI6P-0002RY-OP; Fri, 07 Jun 2019 16:52:29 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI6J-0002Qf-Tk
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:52:25 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D326768AFE; Fri,  7 Jun 2019 18:51:56 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:51:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V7 4/7] nvme: trace: support for fabrics commands
 in host-side
Message-ID: <20190607165156.GG7307@lst.de>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-5-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606194512.11020-5-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_095224_109359_E13F3696 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +#define parse_nvme_cmd(qid, opcode, fctype, cdw10)			\
> +	((opcode != nvme_fabrics_command) ?				\
> +		(qid ?							\
> +			nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :	\
> +			nvme_trace_parse_admin_cmd(p, opcode, cdw10)) :	\
> +		nvme_trace_parse_fabrics_cmd(p, fctype, cdw10))

The indentation and use of braces looks a little odd here, how about:

#define parse_nvme_cmd(qid, opcode, fctype, cdw10)		\
	((opcode) == nvme_fabrics_command ?			\
	 nvme_trace_parse_fabrics_cmd(p, fctype, cdw10) :	\
	((qid) ?						\
	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :	\
	 nvme_trace_parse_admin_cmd(p, opcode, cdw10)))


> +/*
> + * If not fabrics command, fctype will be ignored.
> + */
> +#define show_opcode_name(qid, opcode, fctype)			\
> +	((opcode != nvme_fabrics_command) ?			\
> +		(qid ?						\
> +			show_nvm_opcode_name(opcode) :		\
> +			show_admin_opcode_name(opcode)) :	\
> +		show_fabrics_type_name(fctype))
> +

and:

#define show_opcode_name(qid, opcode, fctype)	\
	((opcode) == nvme_fabrics_command ?	\
	 show_fabrics_type_name(fctype) :	\
	((qid) ?				\
	 show_nvm_opcode_name(opcode) :		\
	 show_admin_opcode_name(opcode)))

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
