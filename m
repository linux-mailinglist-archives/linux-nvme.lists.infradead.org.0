Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E68AD6EE4F
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 09:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfit98e/eKezo3Z+PWZyQ+17zIF3EYzDENEzY2rTiW8=; b=ioq6CD7gI+cEs+
	yav82/wnldr4NGgmQ/Fi3rkas/D5aTvVSc+bXuQIpVLYurwiOKGr5wi/WUQCDXldIeo5JUpRZ1qW7
	7dcHsKTPkE98fRHg3mpv1V9Ouig6dxwW+7ClVwzjXdmTL6f4+/4i86PLrUdl17O7GWuDcy7ip87As
	DBkhH1oHbDe+gfM/yFEfumQb0RHCFUFJhbS4rZUSOc9xD9vVtg1rzfBDIb4nPgSr4q/L9VjGdOITL
	SZMxoKbGvpiUa+iRAjx19waxMuglS7O4zzzAEpebaHW3ZhKMnl+hC8H7OlHMaRqZojhCNlPeP31UI
	Oed+Snc6rXnqretpDrMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokAe-0006P1-WE; Sat, 20 Jul 2019 07:52:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokAQ-0006Og-Fi
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 07:52:31 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so15432283pgi.6
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 00:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K3pDGNvSidLY81ogu17+EwO+ZUnfw7cMUIjb1eH7qHo=;
 b=uueLqT9Ow6yxvUEZzoGPYHqOddS5PmTLlTFiKnveghILKD324nA0dczESVFJelPdQ9
 I+MM9biNulfWxoEoWoPf7WawemVUbfrjZStnHwQ9BJnZRY3uFloPN9EHizYtMDs6nWgC
 /1tJxXpq1Vvr1Ihvj0TYFbzhzYrA9XZaZiSEZSKgolK9SfnGjeuNCAbW2N04DXaOsy0C
 W6D8HPR6Gk6Ong73R5kPOAmmMejojTZSMvOviezL1VvaryBypW1y1fS+qbh/bJyV8KE9
 r+oxYNGVEXd/ZCyJumBcMdIbwUXUxaIKUcCQzM5QpjIV04curvHvnOTYddi60mdEjlxq
 Rhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K3pDGNvSidLY81ogu17+EwO+ZUnfw7cMUIjb1eH7qHo=;
 b=ughfPq2NtRCJgFyUXGRPxbMHxIiJQk6Al4W75nbpfGuEdyVo8b+oMI1YIV4LXC97Tr
 H9uDLHx6g8WWG6DOyx/TNxqm2+NyZVeoLa1sshjbRUlo0Af8AFWsub51SA5raehV3Odc
 bEEoAZ7GvkKrrxO+bti5s/yF88AfTRkXoByS14aeveoWtrKVjpFe2pJx5N6VFaP/tdmQ
 3JgtiyWF4P1d8Bz6/yH8xReMLCUmCjFAw89Mc1/PB32IZIODiGWW1qv+Aaw9W9f+ZCd3
 Je0d5TDPnKj/CizuWtisVpmiPmPeij4LMHyVoyb0W+hYqoq50/A9x9XRI+5IgHZZLVYG
 cQbA==
X-Gm-Message-State: APjAAAU/6Wx9QwDPTOKimFhvvhysAmwv+EKMmVOZBYM/sNL235zwYxfU
 1jcDD3jv/vO97EmaxBuS/lI=
X-Google-Smtp-Source: APXvYqykD8vP+ngynaiMqfGtxgWhIemVzKm5vV8Pg3jhdYFM//LAikFB6Dj+NbBeFgbSjNSQ8JlFHA==
X-Received: by 2002:a63:6fcf:: with SMTP id
 k198mr57932355pgc.276.1563609148944; 
 Sat, 20 Jul 2019 00:52:28 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id u69sm39425390pgu.77.2019.07.20.00.52.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 00:52:28 -0700 (PDT)
Date: Sat, 20 Jul 2019 16:52:24 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
Message-ID: <20190720075224.GA22395@minwoo-desktop>
References: <20190719194256.23618-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194256.23618-1-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_005230_550973_580A0B52 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, lizhongfs@gmail.com,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-19 12:42:56, Sagi Grimberg wrote:
> It is possible that nvme_remove() being ran concurrently with
> nvme_reset_work(), with following sequence:
> 
> nvme_probe()
>   nvme_init_ctrl()
>     //set to NEW
>   nvme_async_probe()
>                                                       nvme_remove()
>                                                         //can not change to
>                                                         //DELETING from NEW
>     nvme_reset_ctrl_sync()
>         nvme_reset_ctrl()
>           //change from NEW
>           //to RESETTING
>                                                        flush reset_work()
>                                                        //not yet queued
>           queue reset_work
>             nvme_reset_work()
>               ....                                     ....
> 
> With the above running concurrently, then it is possible to cause some
> strange issues, like kernel crash with illegal memory accessing
> or something like:
> kernel: pci 0000:00:1f.0: can't enable device: BAR 0
>  [mem 0xc0000000-0xc0003fff] not claimed
> 
> Fix this by waiting for the async probe to complete before allowing
> remove to make forward progress.
> 
> Reported-by: Li Zhong <lizhongfs@gmail.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks, Sagi.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
