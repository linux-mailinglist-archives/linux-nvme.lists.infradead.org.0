Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585628F647
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G089a1HxigoDh3VCZx6zbwpdS7MejnDgpmDAMMg7404=; b=de9PcSYW80zI8pRrk8O7+9pjX
	NoId7CoZ6IEDpNyC8IrffsYfMUQfwPutfc9HvLfnrv3RtchhKVzt6E7HPHFPqkO3anEPWtVpLMrqJ
	mgu6V7JTbb5Skwi6z9hXP1lu2sDAOeaTedHhdUAMm9KSxd7tdLIBY/19XRzVkD5j8DLTv/jHOTnTF
	XSwgAct2k50XELbBfYa6rdwdptsfX3lsJ3FnJe1xn5P58yHG5oe/HdXqMCYsIB8G/vKjodigRUoS0
	i74Vb13Ef220K0qgcp6OJz6RScY+fPKEO2Uk33xtRdMOaCdZT1g/9C6x3pAGUPgvUkaElD9b8V56J
	V7pd+ioPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyN2B-00020X-K9; Thu, 15 Aug 2019 21:11:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyN21-000207-R4
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:11:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id t14so1513357plr.11
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=z4JaiiMmp2NG4SBu3BL81mtPToenomFuJE096SMV9/8=;
 b=h8mIlAI1GuOOeukmndDJ1FQrkwNOSob/uYKkzfPXZgHP1r8XPSmY0FhJRdYCD/N3/8
 R8zIxLKojYfgtompDD1Nt5hhRu20ySoxLL2xhkWwUeIHJzmoiAZr42cnqRgXHFYb6CWr
 vzqYHISIMb4PXs5k9uSCoiGVQaJ7OnXWXYAHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=z4JaiiMmp2NG4SBu3BL81mtPToenomFuJE096SMV9/8=;
 b=qwnHUCfsVQeUeRqkIR6tUmRirL8bZW6niO19XMRxzlvgiQ9IA0UaVCtk2PbqmSrTI3
 5aEZsHJ8vHjELXRGe1Pmxasb18cQIuai09mR+e2JF8D4JZ96BGu5+VHSmL8LxemaKgg6
 oFf54Oq266yWInjadIFe59bVeVAsA8+9cZRO21Bl2wHzRZbEALVFBS0Pm1AARKQqbi+z
 MYaoTw5YOaa3XhinEPdDg9bihMmZT9FMmin21Mh4cvLx+QXz2Yq+RXbYXMPfQUYdeVuu
 4VbH5zC+VaD0PbjliIIZtrorf0xgoAyKx96cQM906J/+5EVt0OCxX764wgvmAJzpw+tT
 5ajg==
X-Gm-Message-State: APjAAAUj0o+FV/WK9AsiizQ3SZfr1Nv0xKm4upgEO0DcJxtRXwSOo8k1
 9Zp5xns3HKmFx0g/MARJZP81Aw==
X-Google-Smtp-Source: APXvYqzSOxLzgk8Klut+KXgMsAQMFX0ZQk47IsAa+Oq/24U3URjew2SlkUlFEN97iDVYLhOIe5gNcQ==
X-Received: by 2002:a17:902:6b4c:: with SMTP id
 g12mr5942603plt.118.1565903497392; 
 Thu, 15 Aug 2019 14:11:37 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o130sm4128923pfg.171.2019.08.15.14.11.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:11:36 -0700 (PDT)
Subject: Re: [PATCH v6 4/7] nvme: make nvme_report_ns_ids propagate error back
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-5-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <bf57c09e-be57-19d2-0ab8-adf95021baae@broadcom.com>
Date: Thu, 15 Aug 2019 14:11:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-5-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_141137_875227_32606FAB 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/12/2019 11:43 PM, Sagi Grimberg wrote:
> And make the callers check the return status and propagate
> back accordingly. Also print the return status.
>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 24 ++++++++++++++++++------
>   1 file changed, 18 insertions(+), 6 deletions(-)
>
>


Reviewed-by: James Smart <james.smart@broadcom.com>

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
