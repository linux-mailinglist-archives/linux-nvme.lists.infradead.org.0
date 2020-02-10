Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0ED1582CF
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Feb 2020 19:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rr7H65kokcOBxJiOprx2C07RTs6TRmTl4km2+kWUNgQ=; b=ZEut26RuJc3evj6O83XouBhed
	V5QCcHmJrcO4MPjX33BBGrBXGyoNqj+dz7gHtNyc+1Fli0FXR98wu28+qj9YZZJ392tjfCjO4/xWY
	qtpDpEZsIHFTKZQgEIzi1UxQSOJ7Ufic8TnXvblAq1m+virwydlYPoM8GFqoMi2jB8kVbvLTNQdC0
	+qYa1rAshxSAQ4criT/5EbhYequRuJUEdFC5e/VY2kdpVN7r4d3iQZ223AaEOXQncuJA5GL6Q5BJA
	UBwo+cU3+KeYfYnwZP8skyBgicMHnOdnFwCKcBqd32KlVrFUkM4H9zJGF2ZZGJ17xRZiPoKI8TPbw
	DMDO/xZgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Dzs-00020Y-Ie; Mon, 10 Feb 2020 18:41:28 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Dzm-00020C-Ov
 for linux-nvme@lists.infradead.org; Mon, 10 Feb 2020 18:41:24 +0000
Received: by mail-ot1-f66.google.com with SMTP id b18so7427632otp.0
 for <linux-nvme@lists.infradead.org>; Mon, 10 Feb 2020 10:41:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qRccjUnGrofw3uiACYQkNwAnnhh2BSn8OWUcQOBujIA=;
 b=bsQVjzQukmE9nWSg6HnB+1w7/HQ0QaJezv+jmaCAIYZy/LEvuTqbENvkVZIk/Zwqey
 dUNzGOTXR68P/B7CspoigdSo+D0cUIumATzQtBV9GjLYgvEohUYSx3Uzx+Qz4oV1qB+b
 lEAgSHfFAOURoIz0lGy/EIU5V8d37NlCUEVeJdAQqIKCpB2qw9VRBRVW3HbVP+oVvZMF
 1TDyIcSCHOz7a2/AvzBgiY3aEla5ouJoziT5deawzO9vkPuo2tpV2E+dOyr+nVFVNbdW
 VOvCvCnNgpz8DNWPMANX7P30AQCii+9Z8DwtFM6f8THyDiBXSww6xkS3BJZ+Ym/ygXu8
 JXYg==
X-Gm-Message-State: APjAAAUivZ8bovKAJlBLLrBTw/dpmAZVfctjJFi1IYel85qk7banOxtp
 bttVzgmqmc6h/ig9ihIyY48=
X-Google-Smtp-Source: APXvYqyfbdDE1mtJ12V4quRX8EWl2TgihICafSuiIk7xEUn0DbwmIfr5vV6yuJWg0aukg3vC4bAlKQ==
X-Received: by 2002:a9d:6a2:: with SMTP id 31mr2034643otx.313.1581360080902;
 Mon, 10 Feb 2020 10:41:20 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t203sm315785oig.39.2020.02.10.10.41.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Feb 2020 10:41:20 -0800 (PST)
Subject: Re: [PATCH] nvme/tcp: fix bug on double requeue when send fails
To: Anton Eidelman <anton@lightbitslabs.com>, linux-nvme@lists.infradead.org, 
 hch@lst.de, Keith Busch <kbusch@kernel.org>, hare@suse.de
References: <20200210183719.32410-1-anton@lightbitslabs.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bacdc8af-65cb-9a02-b714-97b6ec7086e2@grimberg.me>
Date: Mon, 10 Feb 2020 10:41:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200210183719.32410-1-anton@lightbitslabs.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_104122_809161_03688D59 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Adding updated Keith's updated email:

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
