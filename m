Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0DEB96EA
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 20:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OszIoTIhHHs7AOOxSca3J8T6VgGbJ7lTwGl4OTrPd04=; b=nenye7Pja4eMAROYXo99//dp6
	Io+zklAAr7QzkMKC4GhHV/x37Vy2rm2lfLDzJK7TrgzRzrK2oZSQspvTVP5BNzT3IDUH4hycSwaPj
	CiaNr97AutR994jzTisy/eQKEZ9BmsaZivCiygG6jm7rjoQofmTqUXNcOveC/6EpH0R6Fny2ipai8
	DVa5OXJA29NV5q9Ms5vl/Ya6yVwCafDbfI/1G9xRBxslj8ASiSnKNiTwRMNzQUuKCM416R88gOTsk
	l9aG7RYTgU3xRwJGh05gSFaxZPhZTM5eJb1aTOtVOop1Eam/Sp4kOnej2bP2VVwEDMrt7/NtzrFZU
	PoCETQNhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNG0-00016V-98; Fri, 20 Sep 2019 18:03:48 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNFv-000166-JX
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 18:03:44 +0000
Received: by mail-wr1-f68.google.com with SMTP id i18so7643921wru.11
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 11:03:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EYnxw/dOQlR7oZEJ8yCDt63bqVyVRzXB4hmXJuSA9bM=;
 b=hYOeaS4OA6fzHZSU1SJfe9UtsTX65qoQgZ1xWaXYzqTiw+v/BmZiOCyh6VY3OyJg/d
 Zde8LbSjXPqTGPNDEGfB83bPir2g2GnW8s9tz+m5rYX68C/+llZCx4SKE/ib6gskRoNv
 9y49eJFpb6wvv3pLiyLC/ZwvqDbPWEFou4Mh8RtLnPoABUsu6qQNcA5e3PCOrpgfMMbu
 /zNvkmdI58AaGhaiVy4NIO9eEIxa3dOYMjqapI21UIiIm1jCV0wLvI7/nGhcccazdpU0
 A25l7fo8lCwulpY48LFIOE2Uh4CfOAeCaP5tXb/QurZfX16wOkGPFtKkiT0sum2w33kK
 j9oA==
X-Gm-Message-State: APjAAAVGHQBmRWye0ennxxvHRBcddesqYLEsxMINJ0NSyR0PI8G7qClJ
 ChEiKrjxn4D3denLqb0fmwU=
X-Google-Smtp-Source: APXvYqw6A9Anxv+k4Ijk0wvO18SKZhsterUxvx7/qADSQINUvWcgu/rWpO8R+82X3VyhXqvZL3FQ1g==
X-Received: by 2002:a5d:428c:: with SMTP id k12mr13196661wrq.196.1569002619839; 
 Fri, 20 Sep 2019 11:03:39 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i5sm2670460wmd.21.2019.09.20.11.03.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 11:03:39 -0700 (PDT)
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
To: kbusch@kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <48ce0012-e10d-dda8-1225-7088506ebd51@grimberg.me>
Date: Fri, 20 Sep 2019 11:03:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919213431.7864-6-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_110343_647409_0B5967EB 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 9/19/19 2:34 PM, kbusch@kernel.org wrote:
> From: Keith Busch <kbusch@kernel.org>
> 
> A paused controller is doing critical internal activation work in the
> background. Block any controller reset from occurring during this period
> by setting it to the controller state to RESETTING first.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/core.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 95b74d020506..33b5729763c2 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3742,15 +3742,14 @@ static void nvme_fw_act_work(struct work_struct *work)
>   		if (time_after(jiffies, fw_act_timeout)) {
>   			dev_warn(ctrl->device,
>   				"Fw activation timeout, reset controller\n");
> -			nvme_reset_ctrl(ctrl);
> -			break;
> +			nvme_reset_continue(ctrl);
> +			return;
>   		}
>   		msleep(100);
>   	}
>   
> -	if (ctrl->state != NVME_CTRL_LIVE)
> +	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
>   		return;
> -
>   	nvme_start_queues(ctrl);
>   	/* read FW slot information to clear the AER */
>   	nvme_get_fw_slot_info(ctrl);
> @@ -3768,7 +3767,8 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
>   		nvme_queue_scan(ctrl);
>   		break;
>   	case NVME_AER_NOTICE_FW_ACT_STARTING:
> -		queue_work(nvme_wq, &ctrl->fw_act_work);
> +		if (nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> +			queue_work(nvme_wq, &ctrl->fw_act_work);

Overall looks fine,
can we add a little comment:
"prevent others from resetting the controller during fw activation"

Otherwise,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
