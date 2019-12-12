Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BE211C19C
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 01:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dqBCBR7DoLST8cNz26zXEg/o2gmVmI26GvvkkDREMn4=; b=Zck+0tX338v/Wr2Y59ZEKrubP
	4xkyFxe/W0EG6NqUHH277gud+wVLm32OC6vX9cEIRGaZm+gT+xfcq8N3gIzaM9Ie4uSAWzvurstr+
	TWekrAQ6HLYr7MMIOOpY3Ntd7cG12Sie/DiGZfCWDeCCrbExN7PEK69d92l+ja098I66bu9JJnkfC
	xkG9PM811kjzRRstjSCThFwvroaag4SnSDQeOG4/y5CIGLaZaYkHHJgajJSGa+CiwuNAOC1hgCiVQ
	yYWfCDVaSRdyL17tv6D9kv6u18McShl1zxVCnj+02IyDTYp9mRt8FbD5rq1rWA6igVhcElbZ7S4gm
	56v5a0QGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCbQ-000581-IB; Thu, 12 Dec 2019 00:45:12 +0000
Received: from mail-yw1-f67.google.com ([209.85.161.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCbL-0004mw-0G
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 00:45:08 +0000
Received: by mail-yw1-f67.google.com with SMTP id l22so128597ywc.8
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 16:45:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=M1dWnt0Kk4Y7tAj31l3w0L+51+osWtY/ouyxYghfj40=;
 b=t9UYPD2cz4JUdmT/7ol/yEk1LCdHnySsXlGBEVg6DaWo9uCR8tt0yphsHC6slFkjBs
 ih33uLp279Frvh7B7Bq5nmNjnUQiEgFi9NxG10w8F0RomCmGFyGg7SIIEhobdrOI33ao
 MiQEpaDrfls9302EMuOKKk+9LLjb5PHyxMP3is5GEAKTZ6X4wUIAd2Ub1zLkkIMQIACZ
 dq8VwcmFRbsjkNsoXGd4D2SjijiXTANoDj4nAv1dQxru2ScFYEf+G8JVZjbG1pdgHnGN
 vsrvOC5WcYXtvk+S12/d2ri/Sjf+LIk838QOg5uVpisPW+duC9EUo7gxkcoOr8Qflmzl
 E+rQ==
X-Gm-Message-State: APjAAAVg5PkBwb5bhtfjQ8RdnTWaeTZxr2qw5EITXi4EfkPoHcwvbZNl
 9qMKvjshNNLwEScpHd0I5Hy2HK5A
X-Google-Smtp-Source: APXvYqw5u+c2bCxtCJgR/NCu/yVGYPgTNNbR2EEyIu6v+BRRYBN3E1ue62ynzRtg0HouOw+hCE4h7A==
X-Received: by 2002:a9d:338:: with SMTP id 53mr4945524otv.197.1576111504553;
 Wed, 11 Dec 2019 16:45:04 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w203sm1454858oia.12.2019.12.11.16.45.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 16:45:03 -0800 (PST)
Subject: Re: [PATCH V3 1/3] nvmet: make ctrl-id configurable
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-2-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b08812b4-8fa7-d814-cce2-2d8248c233ae@grimberg.me>
Date: Wed, 11 Dec 2019 16:45:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127094034.12334-2-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_164507_051406_40C1B55E 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +static ssize_t nvmet_subsys_attr_cntlid_max_store(struct config_item *item,
> +						  const char *page, size_t cnt)
> +{
> +	int ret = -EINVAL;
> +	u16 cntlid_max;
> +
> +	if (sscanf(page, "%hu\n", &cntlid_max) != 1)
> +		return ret;
> +
> +	if (cntlid_max == 0) {
> +		pr_info("specified cntlid_max = 0 is not allowed\n");
> +		return ret;
> +	}

Check not exceeds unsigned short max value?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
