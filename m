Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E031A8F648
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2bJiqAnxrbKl+rvJEid1d/WX9OTohMDVNVZxmuvFm88=; b=UKVmQUY7OVL5RUZ4Y8Z/wfkdr
	Ab27yh151AenYAl6s/9oxqCL68BekgDwk5IoDqkjcns2TAJFgIYorENhl4/BY9VRGOMMlLP7SrKTj
	Kc36VO1QKZuUUsRUU/vkFF9Rmjqzldi37DTl2s57FQHFWDxkiqvxWP4W+emuk68TZbJWJzkVvH676
	Rm32lXWtDhoU+DLMAmawBla1tu7RvKGh8PN4C0ClSm26uAtzgYn0v+hGGTVpPEENYZhi+Fd1z3jhj
	wDH6S02g47R9n8LkJ+pefFB1XHfj/l2xk3R76mJ+laZwuvbnA7ROTL9m1BK+/f9DXBjk1BC+1AZAM
	aS5dqsrHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyN2T-0002Bs-Sl; Thu, 15 Aug 2019 21:12:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyN2I-0002BL-HL
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:11:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id w2so1955390pfi.3
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=JLfXkAleb/29uaAQ+Fpm6L45DBykigIZs7AiqaLC+mI=;
 b=FHbuRgnoHBseYv+JvX16X2ftQnF8i2ZQ7jK+byYZTBJWlV3IqGUWVzCQI217X9+BGl
 3b6xgyTNE/sxgPtDmSsbAnbW06jRtYC+vsHj17uHo9kdvETyKNLqXXP08DfXl0SQYYqU
 6LBxaLPbD022EyZe/96M8L8UkLT7OQNDyjYGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=JLfXkAleb/29uaAQ+Fpm6L45DBykigIZs7AiqaLC+mI=;
 b=knjvsEh4p1zSlqTOPBPdGGTzp49jWco0H59a8v4PPOnAoDxvSPMDbhJAxPIM6QZYr2
 iNx4/8iANyOH9gtcsYcz+nlLVTa3t6aFt53KpN7uzY8KsTcUz1HXjMoLwl6+G45utpiO
 +X1GtT9kuChCNtUSMTLVNa3fItsrzULN0oQeUijOcnDm+4OasMzE9CtckEcsHo8zmUKA
 9RU8Igc+OTpb66/mxw9U5vrX8Lvw1e0Q/f81lYyd6frkPYK1z1Urav51RohAsnVLYSQP
 5YuGJutY3v2YoAHnmF2WIlObghjkL+sDvk+lZSzdHQY8YKLWR9MY/eleXMUd389/wqkB
 0Wiw==
X-Gm-Message-State: APjAAAX1GY70aOW0i4QSUpjmM/6LHZjRIQ9rNYhDcmFgT2EWqYqCJYR3
 aCWtQ6w+lCC46D0Tm1QL62BBdA==
X-Google-Smtp-Source: APXvYqwAIngPryiBhvLEYFfwBg8orzmi7YhZiBG0+70jdV9Gd4Povlex5+1R8bwDyiIijRdYgHFz4g==
X-Received: by 2002:a17:90a:8a84:: with SMTP id
 x4mr3906526pjn.105.1565903514051; 
 Thu, 15 Aug 2019 14:11:54 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y188sm3784621pfb.115.2019.08.15.14.11.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:11:53 -0700 (PDT)
Subject: Re: [PATCH v6 5/7] nvme-tcp: fail command with
 NVME_SC_HOST_PATH_ERROR send failed
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-6-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <5043e03d-b6f2-6691-611b-e7d08feff0e3@broadcom.com>
Date: Thu, 15 Aug 2019 14:11:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-6-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_141154_570003_8CF7CBFF 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
> This is a more appropriate error status for a transport error
> detected by us (the host).
>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
