Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A8D8F20F
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MYXvr9JmgGzLORtxa5OTvmonjTAKQD0yHSeyvwpZiDg=; b=bFRoIohBVgQrk+Ux+9jyVvDnX
	pR9H4dgVxBFOpG+FMMiPjkGAt1sUZYDCg5RZj8Q1mWiVkGAhbad1UL2ma4NyHciHtwOG2m1Aq5fgg
	7/wiQsa3qxeiwkOvmNFwWip8fIXxFUWC1NdGUyO0eixGTMGBrScPhnsTq1GUc5NuS2teMWR+lkatF
	Lc9eZdK7DT6xJZ+K4rxiRzPhTq9h9wQdGfrc+9OVOwGwNCYHf4t6Ctwap3AtYQUjGW3877hizFUj/
	5qNO4TQ/66ZQgr9AhRvxUGldbeL46AtHBMy2L6xUMDXyXJncEGuf82dgkrVk+Wxv+0BfNTe487ljr
	kmjFXCOfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJST-0002H6-Cs; Thu, 15 Aug 2019 17:22:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJSH-0002GP-Dp
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:22:34 +0000
Received: by mail-ot1-f65.google.com with SMTP id k18so7187432otr.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7Adt+/H6xiBdE/OtIAz7itzSlo6eYMb3NfxdXiFZruc=;
 b=uaPMBXkiHs8s+JFxdEagdOBCH77P4yPYty1hOE3aQbC3Ck8r83VffpxQ0O0+Utjiy0
 Q0xnoTUAZJ431891BiEgU1e7rHZdt/9cqcD8t8cphkRc7G3cZhc2O37IMR0ZQsjCtgkL
 205svwaClxGFGybvEw3j/SlmO4o31wZu/291nbx+ig22NKsuPvI8tqrpkI6twwYcK5g6
 xz++AXWVWnY99U8hLcvTX2YabtnFNfXB0D1NrALsbtmFU+A/WM/vEq4/ZekFB2DCZMNJ
 rez1MP+d/EmEI1T8wxFyJytrnjESf0J/bIyq5bawQSMY0bdSs0DyvPvM+Eto0Tn2vo5Z
 F6DA==
X-Gm-Message-State: APjAAAUBlOCBjThmPvDaQRkCJ7YjmDjuwDTTmY5HyZjLIamGqikS7bdW
 XXTn/1tNfBxW5yAffkwisd8mLtWR
X-Google-Smtp-Source: APXvYqxk47HJzfZedmzYRC2C8SWGw3uf9A/4QiuQ147f4t2FiKpjxTzw0dz7mrD1FUDh3zHbbqh16w==
X-Received: by 2002:a9d:3db7:: with SMTP id l52mr3853133otc.57.1565889747740; 
 Thu, 15 Aug 2019 10:22:27 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i63sm646212oih.18.2019.08.15.10.22.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 10:22:26 -0700 (PDT)
Subject: Re: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
To: amit.engel@dell.com, linux-nvme@lists.infradead.org
References: <20190815124348.125105-1-amit.engel@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ca9ad5ba-6199-cc0b-176a-9f8ccf7870a5@grimberg.me>
Date: Thu, 15 Aug 2019 10:22:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815124348.125105-1-amit.engel@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_102229_464698_A112E225 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> From: Amit <amit.engel@emc.com>
> 
> ensure that nvmet_copy_to_sgl does not exceed data_len
> 
> Signed-off-by: Amit <amit.engel@emc.com>
> ---
>   drivers/nvme/target/admin-cmd.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
> index 51800a9ce9a9..fd7749727f55 100644
> --- a/drivers/nvme/target/admin-cmd.c
> +++ b/drivers/nvme/target/admin-cmd.c
> @@ -40,13 +40,14 @@ static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
>   	u16 status = NVME_SC_SUCCESS;
>   	unsigned long flags;
>   	off_t offset = 0;
> +	size_t num_of_sgl_slots = req->data_len/sizeof(struct nvme_error_slot);

This should be do_div.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
