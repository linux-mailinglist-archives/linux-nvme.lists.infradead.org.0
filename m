Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A2251AEF
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFOKPByBoVsnUFRrQVHwq1kf3m5645ZH0azJUrSrP88=; b=svY4ovfsLlw+3M
	u9SoOYUDnoYQGMfnZ3zbAPhcgcz4zTbVVKJ+/P/lmrNn31hAFAXYmvQwHMpk4afS5x5WlPgddcRRS
	RbLLZ4eNDgYsA1gfrI1fXUyQUwy27akHm8lu5sVAy7G0DCd3Ur/PoULI1T9UvN1/gyP7E6E+XbuWh
	prWkMCgyb1r2fVlKVN5vKo1H0EXoQBsWYiHrxyFFp+jIFBfwGQtm8/K9KaFdoIp7fUJL4YIBENAFh
	WnYzvvP2aj/v9w9BQwZoMklJ4p/XLf/Yo8SguUu1lThiqPhgebtARGWXRUzQ6z+b1eW2F32Q4tdx8
	9PI8gCYW0CbwN5UFgSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTzI-0000kd-0O; Mon, 24 Jun 2019 18:46:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTzB-0000jx-Fb
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:46:39 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so7384338plb.10
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dPpJeevT3H2ww/E5O4EQBlOOyrHr2rPWUCxJmzA2JZA=;
 b=ofPlwK87YGf+12+EVbIl9+4fP1BPMsb/sIw1KLD4B2E5W0WFNuAGUbDus8lWr1xor9
 ksLZsHrjgsh6xoyZlf5TMvEZ2NwrHfvZ5YtQuIaNgOaL1v/mhqAEg3UQvTfNnhKz3hWV
 zi/59fFI42az/zLXi70tVGkVI0os5hnE7hKPkqtKnYpwPTVv2OW0bGpj5robPnChRvvA
 oEoChnEiohAzdxfSu6XFMXzPB6bBEuit8MmMWzVxrBjZPj6mha9RFBfEe+s7WmUaoC33
 Zxeqtk7LlBmjuq/5+N8/+AxiZcf9MAgvGewWH6dznPc397xjFf2r2CR0+JneOhdlO5ir
 boUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dPpJeevT3H2ww/E5O4EQBlOOyrHr2rPWUCxJmzA2JZA=;
 b=RB55iuK5xEptUHO4+It0ILIzGLFlt8swopm8I5OWpEhw63EGhUXiIPi9DxdBENIWsI
 8HSwclXS/UPSskasT6Fp+atAgqvHt918VAtXjLFKhW9yjxa5tWXC1fmVcJmTHaQmSp0+
 HkCjpPLslciZBfz7JI3+FWKhR/5f2/3JnwPvOckco/PXobGKR2HZzuAqazUAsEsVHbuQ
 piJEeatiZEb6i/JthJ9DkxRvC9w9NZidZuYv9rB/n1WETlVpt0b/smtZ1q7Z3xk/sQf/
 2DqqsHZrDNfXx4u6ABNq+eY9kzhqsSwtMHjkl/kDI1XfC9B57vb/FsltLydPKPyWEvxW
 CQ1w==
X-Gm-Message-State: APjAAAWN1F8fOP5xyeXYZlhYScqloQmSHrh7P08MG6W75v0YiBOG3wR6
 DjxI+3CX1DXXHxCf6kaTj5E=
X-Google-Smtp-Source: APXvYqywYwpCj5nI5vr5wqYtqsXPNojV6fVPIEYrwrTmjsgUDziOErZuPqASx1VZBGY8/d9sZWYNNA==
X-Received: by 2002:a17:902:aa0a:: with SMTP id
 be10mr145559248plb.293.1561401996339; 
 Mon, 24 Jun 2019 11:46:36 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t17sm3771717pgg.48.2019.06.24.11.46.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 11:46:35 -0700 (PDT)
Date: Tue, 25 Jun 2019 03:46:32 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH nvme-cli 01/13] Remove superfluous casts
Message-ID: <20190624184632.GA6526@minwooim-desktop>
References: <20190619173701.8263-1-bvanassche@acm.org>
 <20190619173701.8263-2-bvanassche@acm.org>
 <87tvcfnw05.fsf@solarflare.com>
 <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fbac30a-51f0-95a7-7146-28805103f6a8@acm.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_114637_556657_FBA527E1 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-24 06:55:21, Bart Van Assche wrote:
> On 6/24/19 3:00 AM, Mikhail Skorzhinskii wrote:
> > I'm not completely sure that anyone interesting in fixing this, but this
> > change breaks compilation on anything with glibc v2.24 or lower. This is
> > due to long lasting bug #16458[1] which was fixed 2 years ago and landed
> > in glibc v2.25.
> > 
> > I noticed it due to compiling it in rhel7\centos7 which is using glibc
> > v2.17.
> 
> How about restoring RHEL 7 compatibility with the (untested) patch below?

Bart,

It works for me.

> 
> Thanks,
> 
> Bart.
> 
> diff --git a/nvme.h b/nvme.h
> index a149005a0425..ecac52d4d172 100644
> --- a/nvme.h
> +++ b/nvme.h
> @@ -119,19 +119,31 @@ struct nvme_bar_cap {
>  #define __force
>  #endif
> 
> -#define cpu_to_le16(x) \
> -	((__force __le16)htole16(x))
> -#define cpu_to_le32(x) \
> -	((__force __le32)htole32(x))
> -#define cpu_to_le64(x) \
> -	((__force __le64)htole64(x))
> -
> -#define le16_to_cpu(x) \
> -	le16toh((__force __u16)(x))
> -#define le32_to_cpu(x) \
> -	le32toh((__force __u32)(x))
> -#define le64_to_cpu(x) \
> -	le64toh((__force __u64)(x))
> +static inline __le16 cpu_to_le16(uint16_t x)
> +{
> +	return ((__force __le16)htole16(x));
> +}
> +static inline __le32 cpu_to_le32(uint32_t x)
> +{
> +	return ((__force __le32)htole32(x));
> +}
> +static inline __le64 cpu_to_le64(uint64_t x)
> +{
> +	return ((__force __le64)htole64(x));
> +}
> +
> +static inline uint16_t le16_to_cpu(__le16 x)
> +{
> +	return le16toh((__force __u16)x);
> +}
> +static inline uint32_t le32_to_cpu(__le32 x)
> +{
> +	return le32toh((__force __u32)x);
> +}
> +static inline uint64_t le64_to_cpu(__le64 x)
> +{
> +	return le64toh((__force __u64)x);
> +}
> 
>  #define MAX_LIST_ITEMS 256
>  struct list_item {
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
