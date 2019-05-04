Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D78413A91
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 16:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VlN0yb9IZF0Msq5dARIfsYU7FyNNsSQxWItKqSZaqsw=; b=XPbD/DV27UTIUtP3YsIFZlXNe
	CGsoMD7MJ5kJk2ZoTCVpC49duqN/o7VXX6ZCdRIY0P2L0KmsgnUk4ZGvT4LRkIxBZ1BHaQqD/2nas
	zCLa1vtkNWG7sE37fCucxi/5D9i/wLrNrHC5OVW6VxfUXFnPYtBkF+5WmWFfSR68+nCFRk6cWto0H
	ZX1F5Mla9q9xPtwRqiXBZ7quMQtHFzVdEMddFOSwulRfSa44//ESA0cDyP7ROki2TCa4VffZqIYOm
	qIaivEl3MtAeDQlmRvCj3+vxUzUdorHo0KrnZIFOCQSiUmpgrUtJZ5httVTVBmkI84QUI2bpdjsrA
	dtmSkMsVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvXK-0002N7-0q; Sat, 04 May 2019 14:21:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvXD-0002Ma-Vg
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 14:21:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id o5so4101781pls.12
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 07:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fY3tGJWJwaBK14dfm7k6EcTPTV2wk075L6tfnhV2zu0=;
 b=fGAvTKdsyCynnyMvbip8otzBjklLTRfcrWTFMytK2gotxJYNsoBGBImuiut2Etmrpe
 uMOZMZ4qDklIGnSUlsehr/U6Bpc3klcNjdArVk7j4Yo3EzGgGrMDzUtWC9ClkXbUb9B/
 D6jnwcfJ5JcRerCBcljdKk507+pkhLINLtNxe+BGw4tN+eG4BH2AgRCxFFiiF2qHkVow
 lB6f7ZhbRm864LYgQiFCt5HFgGwv2jFZvMRHWStJB0xXmvirfkM3I2NSUF6O+xmoQR/g
 gIPemg+M8f1T8U0r8Etppdjv4+aj1/jyibphM+sSFnr+f3tpb0YSaOzXYBHdYI74kn+9
 +jFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fY3tGJWJwaBK14dfm7k6EcTPTV2wk075L6tfnhV2zu0=;
 b=I1Xf9PH/wXkxaPKy9b4lcyJwb3PPQMwFGDZXJtyocsxDwc2j44GMZBJ1ePnvuo2eDI
 SBrv+XaxX7K640R9qHkqo9Vlq3hYGsdGBWc5DJm7ITHlYyBpp7Ihx13wivdElmanT3s3
 rAwOgS/O1jX7TU05OgTK/O7BMdI+bWmeWbFkd8jwZAkeYOdG8xP0SEUAwxrVnmrzFObT
 WqkmrdQ7T9KLvLdKi5xFEanTm0C+lwzYzPul3nUobdX60oBhkfl/YWquY4GmV3mg5uJ+
 YBrPjfVF0ZuzSVf2g+ArO0Bs4gDS5BICkVsDqtha85A5yfmLoOjvkWQ+CWnNQmIhuju2
 +jgg==
X-Gm-Message-State: APjAAAUDvc5D4CttR6z4liZ+VfwkhVwOxoziZWVZH14oSCdKy+gpkuY8
 E18fxAnWaZkqoHejcQxKVIutt4Rv4U4=
X-Google-Smtp-Source: APXvYqzASqCynY6/6qqMneGyNUQY/wggCnBall1xdExFxwdtgFyaFhZehMCkS7APNlPCsxA+x0jvRQ==
X-Received: by 2002:a17:902:b081:: with SMTP id
 p1mr18948550plr.110.1556979659639; 
 Sat, 04 May 2019 07:20:59 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j12sm12655390pgg.79.2019.05.04.07.20.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:20:58 -0700 (PDT)
Subject: Re: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-3-hare@suse.de>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <1624cd68-f64e-d255-2f6e-5c1436699778@gmail.com>
Date: Sat, 4 May 2019 23:20:54 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503133736.111201-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_072104_046758_E641A6DF 
X-CRM114-Status: GOOD (  18.20  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Hannes,

I think this patch looks good. but I have a simple query here.

On 5/3/19 10:37 PM, Hannes Reinecke wrote:
> @@ -2434,10 +2452,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   	}
>   
>   	mutex_lock(&subsys->lock);
> -	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
> +	if (!nvme_duplicate_cntlid(subsys, ctrl))
> +		list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
> +	else {
> +		dev_err(ctrl->device,
> +			"Duplicate cntlid %u, rejecting\n",
> +			ctrl->cntlid);
> +		ctrl->subsys = NULL;
> +		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
> +		nvme_put_subsystem(subsys);

Does it(nvme_put_subsystem()) really need to be here?  I think explicit
"put" for the subsystem is always good, but right above this code, we
can see the comment when sysfs link has been failed:

if (sysfs_create_link(&subsys->dev.kobj, &ctrl->device->kobj,
                 dev_name(ctrl->device))) {
         dev_err(ctrl->device,
                 "failed to create sysfs link from subsystem.\n");
         /* the transport driver will eventually put the subsystem */
         return -EINVAL;
}

I'm not pretty sure where the exactly the comment says, but I can see
the nvme_destroy_subsystem() would be invoked from the transport
drivers (e.g. pci, rdma, etc)

In case of nvme-pci, nvme_remove_dead_ctrl() will do the "put".  For
nvme-rdma, nvme_rdma_create_ctrl() will do the "put".

Did you do just explicit "put" for the subsystem OR does it really need
to be here with any other reason?

I'm just asking why there is a difference between code above it and this
patch.  If you don't mind, please let me know if I'm wrong here. :)

Thanks,

> +		ret = -EINVAL;
> +	}
>   	mutex_unlock(&subsys->lock);
>   
> -	return 0;
> +	return ret;
>   
>   out_unlock:
>   	mutex_unlock(&nvme_subsystems_lock);
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
