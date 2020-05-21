Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E371DC6D7
	for <lists+linux-nvme@lfdr.de>; Thu, 21 May 2020 08:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MuMfVSnZkVrVpQDVcSdixH2c3/gCqY15qTI76tUgadY=; b=uspyGEtkWOG/GzPKsVvolt1Bv
	O7PWAmmiaFkmWpWyGAJRptyxqWxuZ3SfJC01nUbAOe8e3Xmo3VseP59L9tefRxNGE3n0m8qaodviJ
	S7lKq+j7UO5F2raX08DP7je/Dn+Js81XWyjB1PmCBo1meYbj1n9ugOrQz5oQKlNBKyxjhsxnQwT3X
	DwpUJHNs++E3YXVUw46q9kIzGJziU++okMahbxz6f4T80MPJoHQWO2DDGminy9//CzjhrwrW/FjA6
	fFJkYk3WWXSGOLQnKra6T9qCZ/9QypL99eFSjKYgN4mzxUtpCWn+AYOBbk1dZLO6yFVWjhUwkoeKF
	OqkkXpE/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbeL7-0001Wf-Se; Thu, 21 May 2020 06:05:57 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbeL4-0001Vy-30
 for linux-nvme@lists.infradead.org; Thu, 21 May 2020 06:05:55 +0000
Received: by mail-pj1-f65.google.com with SMTP id 5so2575383pjd.0
 for <linux-nvme@lists.infradead.org>; Wed, 20 May 2020 23:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A/QQZ2xwlWaRtMefqO3SXe+5fHkLaljHcZ/+TMqh24c=;
 b=D+BkagswuUQuvoQXXsvUn2eiE7o15x44yJmoNrhLsl73J6NeMW5nwfI/7UW0ShOjyp
 GSDQjOb3UqHMSDDXCHQhsHsV5OYe0oPK/7xthzSgUttaXA3cGJOVTJU/7QywcnHujiBV
 wjHbkPxF315T/5K9hS0DYR6vBxNfdcEKmIkWWaS4KxT8I13rJEWorvha8qba9uL6QmFT
 axhHC+cN8S03AVGjOemHrGAKwTIM84zhAS0r5ChTAS85Pwp9OUiLrAzHwpleFEiE0TSa
 /cb4JuhVvRjeoXmFYuPCLXrw/rk0BjcHkP49Qy0F9kFtJC1scuI7Wt/qDc6h3oc1h0ze
 c8PA==
X-Gm-Message-State: AOAM532YHJQQr2jb5ZXS9ez1rIwt+luVUjYUgSSLB1LffHVi85RTJ2yy
 GPQTeAbx9WFChIN6fZA5CN8=
X-Google-Smtp-Source: ABdhPJw+bSMFuke025eRyQsZVeSUwK69O1vJ4dx0TbX0jjbSKUZ65KYUf9OqeF/gq66vsqCEvbr25w==
X-Received: by 2002:a17:902:9695:: with SMTP id
 n21mr2116293plp.137.1590041153328; 
 Wed, 20 May 2020 23:05:53 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9145:8e17:24ea:6484?
 ([2601:647:4802:9070:9145:8e17:24ea:6484])
 by smtp.gmail.com with ESMTPSA id r12sm3034694pgv.59.2020.05.20.23.05.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 23:05:52 -0700 (PDT)
Subject: Re: [PATCH] nvme: set dma alignment to qword
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200521022253.3268324-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <77425d7c-e8b8-b012-b1b3-c083b0b3af3c@grimberg.me>
Date: Wed, 20 May 2020 23:05:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521022253.3268324-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_230554_126366_D8DF2572 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 805d289e6cd9..ba860efd250d 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2283,6 +2283,7 @@ static void nvme_set_queue_limits(struct nvme_ctrl *ctrl,
>   		blk_queue_max_segments(q, min_t(u32, max_segments, USHRT_MAX));
>   	}
>   	blk_queue_virt_boundary(q, ctrl->page_size - 1);
> +	blk_queue_dma_alignment(q, 7);

Shouldn't be an issue for rdma/tcp, think that it should also be OK for
FC as well but not sure.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
