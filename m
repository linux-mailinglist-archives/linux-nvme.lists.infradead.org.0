Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306D2B96EE
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 20:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HtCJYZBjYT+2YIxEl93GtjwB8Dt6tpVN2AAYvg769As=; b=ebg1EHRuYVms1pcmAAWNbQbsi
	1L+y53s66FbUJ57azgeYWNLmlmTPjCPEUB7AHiP/Bd0WVlLrM0jvQ4aw5WJkl8UaAkADrgyYvbj/n
	SAjYfKkUj7JDBDIrxq/G1QfvWqx1bzhnL2pHR6BcXFE6V+TUmKWi3zi8Kwr7ANse1Zfeh5Kz46hLA
	Myokp/xRjay/BEyj9Y+mP+OxoiZoJiOkTbnkpL5Tb8l+JvCbVxiV7KiuyhI8WQjxBc7Di7lmKJ0qd
	hW/INCk8ifANIjFeImTV6fKNACoSv8vc5KpeflqbPIlsxm2XPPgFTqtOt3DzKcf/lpCyUOv0g3jVD
	umblHAcig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNHg-0002hF-0w; Fri, 20 Sep 2019 18:05:32 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNHb-0002gs-TB
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 18:05:29 +0000
Received: by mail-wr1-f66.google.com with SMTP id v8so7712603wrt.2
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 11:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=grg7EcEzpE0OLBPrvFARClQ6KUZN40qfBjG/YomASuY=;
 b=fCnN1atqxzQQzwf2LPeJQJdjneuzLVZV8nLtGcUCt7EOytUBn8+uoINgkKSQV9O9qr
 IVwO9S71a3ydlnA7AZsxQQJYBqKVW1o2MWdCbZM3yVreqSK7HWd2YFU+64faeY7cIpL8
 7PdCIh+v2QiM/rrij5EqXh81tLunT1VZtvsj5c+r1+4re65wN8EDnpzWoawB13kNbC83
 PsM3AZ48/J2IAXQ2tspYEdYflb48ocEMuLgdj7jyYjCZNw7WmqzKpp5sS1pmYjayPnf6
 P+I1z1IsS/yjY63GntX7bWfUkG0ONc+QsdrIrTDnG/pliKIfX7lYQmf8LBatNl9JcsBn
 HM7A==
X-Gm-Message-State: APjAAAXVLmV5HvOiid7KhkGRf1qTSPRNd40F2lq7DEJ7lmnFFxdOuPT9
 TcNNSL9MdJkCMDclELGMmvI=
X-Google-Smtp-Source: APXvYqwgCT7jKgWK2rb0cxVaTZIbL8PF/XodpCl5wZ30o3I4g4TDqe80s9Jmw0k/0jVjABgHkAG72Q==
X-Received: by 2002:adf:b648:: with SMTP id i8mr478373wre.372.1569002726286;
 Fri, 20 Sep 2019 11:05:26 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id a71sm3514187wma.43.2019.09.20.11.05.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 11:05:25 -0700 (PDT)
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
To: kbusch@kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c31bee2b-5f43-9744-8fbc-971c3504622e@grimberg.me>
Date: Fri, 20 Sep 2019 11:05:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919213431.7864-6-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_110527_943691_5B9D11CB 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
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

btw, what happens if someone just initiated a reset here when the event
is handled? just ignore the fw activation?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
