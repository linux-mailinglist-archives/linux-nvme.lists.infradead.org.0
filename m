Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8DF86E8A
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/AKqiAyTfgYBIya6c795B3xMPoweYx1Bis/I4drONN0=; b=aMlB3YSO3BBErys88VkOy47aB
	kqsZIz1A/AFplqThIoWH6E005Ax9izYzr+FMTvhTIl4WD2gvMEYFkNJaCRHcONJSp1cUol9Al++DB
	PtVwzEElEcf4FlUB/T4nxx3Qrq3+CRn8t+WkJnFZNJoQp4tNGfSYnVPqUjxWl+fnh0JTkSAXRvQtS
	8N2ufoRqItW2CxnLy/IcGLnhT5aZsf4hbTAFkI4Zv9pzSVX4nQG/dkDXJIrS1Qhj+R+hMFzZbaBgX
	w0RyoUylhmfZ6VgSbJp4fltbttlDs8qNfUlSa9cgXn73Kq4jzUYmGcJ06rPiHmH3PFJeLth+Tn8J0
	iuklKngsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsA8-0000Sg-Dv; Thu, 08 Aug 2019 23:49:40 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsA3-0000SM-UR
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:49:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id r21so119817901otq.6
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 16:49:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gRE+cmTXFP1buvyaF8pfPVq9SC0TNL4awqkjm1Au9ho=;
 b=dod+/w+NoG35E8kNyT7j29vNz+igJ5omi/CqGG++K7t//K4aPjyhKm/sjFPczpRHKW
 AOC1fubANKvOkRb3OIH4KB6+h9CwC7utcp2UXGp0AKb1tT2O5dWmMZnbv3fUx0wq9+lp
 b6a8wuFf64RQ6g1E4Z+twErCPUMXp7IDPN2iuqryy8XsMm7K4JDsdo6ljKgqL+Cx/btH
 aPE40PAc7STD8UBOMYJAsJBxXEdUOPKWn0ZykeCYD282JLPBt4hVnjGltq7k3aa3egds
 y78cOgr8jlzfH80I5F1NVtK0UZvxkbkTxABLq4shoXmjfQpFQbRPKt0b2ZG6LPSgdW4d
 xZTQ==
X-Gm-Message-State: APjAAAVuaPPJQ2VL6UPTXQuVk+HIqDr2WDiuo6riqH6OT3PlHNh+QSmr
 167uAIFqSnQLoI15r16oPe0=
X-Google-Smtp-Source: APXvYqzeVYXslV4e/3TCopeysSckUkfZDBg8QsO/NGcHKMQW5tin9u7geDgb0bUjZ3Np+qWW88WKSA==
X-Received: by 2002:aca:6706:: with SMTP id z6mr4169808oix.43.1565308173999;
 Thu, 08 Aug 2019 16:49:33 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id w21sm5470079oti.52.2019.08.08.16.49.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 16:49:33 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme: make all fabrics command run on a separate
 request queue
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190808234643.8180-1-sagi@grimberg.me>
Message-ID: <01658bb4-6b98-8729-fed9-5a75fd197746@grimberg.me>
Date: Thu, 8 Aug 2019 16:49:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808234643.8180-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_164935_985575_4CFC1741 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index ae30ed75dad9..ccd465220f1e 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1623,7 +1623,8 @@ static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
>   		ret = nvme_identify_ns_descs(ctrl, nsid, ids);
>   		if (ret)
>   			dev_warn(ctrl->device,
> -				 "%s: Identify Descriptors failed\n", __func__);
> +				 "%s: Identify Descriptors failed (%d)\n",
> +				 __func__, ret);
>   	}
>   	return ret;
>   }


Ignore this hunk... unrelated change from a different patch set...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
