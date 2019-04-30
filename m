Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EBB10217
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 23:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=61dbXx4N3wopS5VjjKTDqj+TDfZVHXeqnD1C6lLQOOA=; b=KD0iOxmWp5N2NbPQPta9VYMxI
	bqNy0yuZcyfjcVMQPGQUWNxVAPyWLIoIVoxuOPz7npFJRaDVG3AkeO7VSal8L1yUhEY2ll8UagqSG
	dikTZGjrD7AZddwk0dVaJDO33//Do7F+pSu5dPTcgJNqh1EwF2S8Ph2bVmgID7z278EImjW5ueqJL
	EuYvpYHhIRYgiyfPJuYUhU5zZo4EXRyQeYv/ibOje65SWphQ3cptW75AldJLQcwwtEqYJwVhmpJCe
	rT7NaovuuaUcEIAasdYGbEkoPpMLv1S4ZsO/h634RlrMK9U7mwa3z8OvQdVQ49Biqtkc36zw1RfDK
	fvM3SuljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLalx-0000WB-9Q; Tue, 30 Apr 2019 21:58:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLals-0000Vn-35
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 21:58:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id f36so7365824plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 14:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=IqZEqmDTHN4adK7dZMqWLt4hE55IaSfCI9Crq9gtf34=;
 b=LmNWUIbKu0+oAAKY3WMqGT91EtdI5o7dBFvsEqUhfXpJygWY2e7V5VBvvQQHgV/s7b
 c9buWb09tgwWrBt86kzK0A8IAT0ZV4r+iTzTMHLt9FCWWtIKyX9vchwOGiteKS5Cz2ss
 +chF1UCjDWEQYOZ5SmeGrowSf24EXMYWmf4dw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=IqZEqmDTHN4adK7dZMqWLt4hE55IaSfCI9Crq9gtf34=;
 b=MP/y+kg9kj0G6xc1eJus8rWRR8GNGg0IRKqPZJ7KJKCWWwd2Oy7LQjs9jM4ipHdBmz
 9WtKVY6Q8HWhKBz0MqYMy4cPZuj5gBiQfQyaDi16xtJeBvjBsi0wbtlQNImFiPO/tApm
 DZomTg9rZ0skb13noDXRQ1rLvRiSSvaR1sGtJIV/sguZR4RXZlEw7ATxPVMiAmugJnqX
 fzqq79PzBIksjPqkEQdEbtK/mt7ZBiniWpxWdjc5FLfHrHGoRhsK4BgsOm6B0XEvPuun
 ZJmI6X8z2VMyjEuv4hrpCfRdjyUQ5TYvxnAwEjDxwlG383R82AOJaaUr897t+t2oElmR
 XpMA==
X-Gm-Message-State: APjAAAVUBfbCPL0Y3+1irbtkCxP/uE3lbGAo2yIWxqRVtYknP6IWYZbO
 5g4+ZT04UBiY3EA+D2PZwrUHK8de7rRSWrwi54QbRbo3birMR2Q5gLFgta6UEPUr3zIj+fxf6Tq
 DnTkPcI0oQYNz2DGMaC6weupRkjn64kJvBRFzIkRNHv6Kbw9eUCHM0A8eDglFoPOxBrpZ09WSAw
 jouFxxew==
X-Google-Smtp-Source: APXvYqwf3EMTqJ6RY9u339NzbIQ/sWsIrcREH0MmjQU6ps6NKLCzJeAEB++NA1qXL/lJ05e1znYFkA==
X-Received: by 2002:a17:902:2bca:: with SMTP id
 l68mr7433059plb.301.1556661518603; 
 Tue, 30 Apr 2019 14:58:38 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id j28sm45450953pgb.46.2019.04.30.14.58.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 14:58:37 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme: nvme_set_queue_count should use descriptive
 macros
To: Edmund Nadolski <ednadols@linux.microsoft.com>,
 linux-nvme@lists.infradead.org
References: <20190430200905.28341-1-ednadols@linux.microsoft.com>
 <20190430200905.28341-2-ednadols@linux.microsoft.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <62780ff5-7484-2e63-7b5e-3ef6eaf0b1a0@broadcom.com>
Date: Tue, 30 Apr 2019 14:58:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430200905.28341-2-ednadols@linux.microsoft.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_145840_475571_695E8BEA 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 4/30/2019 1:09 PM, Edmund Nadolski wrote:
> Implement macros to set/get the number of submission and/or completion
> queues requested by the Set Features command. This replaces the bit
> masking/shifting code and reflects the field names used in the spec.
>
> Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>
> ---
>   drivers/nvme/host/core.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 3dd043aa6d1f..b3804dbdcc30 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1132,9 +1132,13 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>   	return ret;
>   }
>   
> +#define SET_NUMQ(nsqr, ncqr)	(((nsqr) - 1) | (((ncqr) - 1) << 16))
> +#define GET_NSQA(dw)		(((dw) & 0xffff) + 1)
> +#define GET_NCQA(dw)		(((dw) >> 16) + 1)
> +
>   int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>   {
> -	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> +	u32 q_count = SET_NUMQ(*count, *count);
>   	u32 result;
>   	int status, nr_io_queues;
>   
> @@ -1152,7 +1156,7 @@ int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>   		dev_err(ctrl->device, "Could not set queue count (%d)\n", status);
>   		*count = 0;
>   	} else {
> -		nr_io_queues = min(result & 0xffff, result >> 16) + 1;
> +		nr_io_queues = min(GET_NSQA(result), GET_NCQA(result));
>   		*count = min(*count, nr_io_queues);
>   	}
>   

I agree with Christoph. I think it actually hurts understanding.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
