Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1F38F62A
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 23:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aw+w3trLpJUAWDzcRWGGnKDe+eW0Im1KAY66atZ5ygg=; b=u+caz7dpTErLH9sFPMiUiQYos
	vAZ+56PRr/0Rt31lzYHlS+OHpGFR+yxAAyREHKIzWj0x2OwEs+B4IFJ+n2gqFFR2NLKX+PW4OcbAo
	DJGbZog5XwWxnIhWl8ZAm/O5Dz1EraCiw1lnODSgu/gckHFF5/nFtHrRjo9TRDGUsZ1xEF0qCAiuS
	p8O8aKVYZNJZzU26A54DXB6jkbKdr1NApDpQD4V8PmJ9iDXht3SWhaz/HytYa5hnp2rHGZEjGQEW7
	zzspeB2bXiLq5IpX1YuY82EEg79gX4eUxhnjXxaronLc/bXonbxAlxNzmCGjgh7dkExwuTBbGo5wO
	AvBH+/wRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMup-0007AK-1K; Thu, 15 Aug 2019 21:04:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMuh-00079q-1y
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 21:04:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so1514527plp.9
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 14:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=EsNT2br9KBcSscrKMvmQHvxrj63S6ZtvbSUyaX8e3Lo=;
 b=ffnktzyx0gGI6vmwE2scF7KOSjj/S36jKiPElOYQQzdnHe2zoNBEfGiP4r5ahI+uFY
 uJfyEU1LqEpqSbX8XU/XWKhV/YJkW9XUAy6uWjt12lwGG00spAQxHGe+Y/RH9Cjvgm7v
 29eh+/hbM625hQsGPc8vGSg7osQaIKdt46y60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=EsNT2br9KBcSscrKMvmQHvxrj63S6ZtvbSUyaX8e3Lo=;
 b=dUj1n7wtruZopp8kDlH9OWeQ2aGyrgNtunET0GCOgPvZ0V818TeMrB3o47OxkeWdym
 yx3NEO/GRWFS4dCoLaXtYd5zHyflFxGTsyDWlw6JXjzU0scabnRP6YxFoyKJnZaZQqeT
 S84snJcscpR6SjWIsFuBocGcUycVRpDPh/Efs7JT0UIiO6ez+p/ezOVxOdKFt1gqeW+p
 x0f1k7Hu6Ndq1BgzM64WQyhz+6QCdR7utz19YNA6uxOvrUPZTBtHr+p4BqfOC9+IWtjB
 dShYvyAkNpWLpN/21fkLLv685mS7z2Mno9T5+1yVLpefSrtCNI+Ltox0Ll2LrGGOp3xt
 TbXQ==
X-Gm-Message-State: APjAAAWIYPLO40Ukv6fd4lAqv4Y1wlXEtAaA22RNmDYjUUioidiOBXaD
 PPGnpa09ijvPUzDMRiYxCV2tIg==
X-Google-Smtp-Source: APXvYqx3ZAKnvuM3lxDVN1UunH+S+xwAL/Wup869+0SdoCpfICIzGxSXkiMF7WGLVFOKCV17ITsIBQ==
X-Received: by 2002:a17:902:6b88:: with SMTP id
 p8mr5820766plk.95.1565903041619; 
 Thu, 15 Aug 2019 14:04:01 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j6sm4335370pfg.158.2019.08.15.14.03.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 14:04:00 -0700 (PDT)
Subject: Re: [PATCH v6 1/7] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-2-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <b5d5c95b-c63d-a285-e9b8-836d240274f4@broadcom.com>
Date: Thu, 15 Aug 2019 14:03:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813064304.7344-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_140403_103424_64D9B247 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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



On 8/12/2019 11:42 PM, Sagi Grimberg wrote:
> NVME_SC_ABORT_REQ means that the request was aborted due to
> an abort command received. In our case, this is a transport
> cancellation, so host pathing error is much more appropriate.
>
> Also, convert NVME_SC_HOST_PATH_ERROR to BLK_STS_TRANSPORT for
> such that callers can understand that the status is a transport
> related error. This will be used by the ns scanning code to
> understand if it got an error from the controller or that the
> controller happens to be unreachable by the transport.
>
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
