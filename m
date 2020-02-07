Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1B4154F93
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Feb 2020 01:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=KzCG94d8zi3Ppa7yujm+WwyWP
	+zV3AFrCbDYQLcd+Qr+cTNLEZcf72JGwpywrb7H9SIZvc5WJF+Q+CmS9uCeJ6XNaKwJUSlJYGVsaz
	MmQljgTb2XZZNvqKMMHz8CN47IXEXlmoi7fYhaWZ+mlKZWcQsnF4eOs5IZMzG+NU+Ag/pjvDxESZO
	rTQt2c1lWY+WZzwFPfacmRjs7nqVphKem6q0TflTxJHsEp+UYQteCIPMwRqFD9tXqeOYHySi0g6mq
	zWAUASvdZpdMqgr5CMGmT0a6T93/inepR4HktAYpkGDwKpWhhdFhGqYl5KP1cx5gMS+tpGFt+0XcC
	HnmAEdNgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izr9w-0007CK-O1; Fri, 07 Feb 2020 00:06:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izr9p-00079t-3E
 for linux-nvme@lists.infradead.org; Fri, 07 Feb 2020 00:06:07 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so444814otd.9
 for <linux-nvme@lists.infradead.org>; Thu, 06 Feb 2020 16:06:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=QcsI50gWVuhPzRVzeyI9BBotBwNt8CldjsSlPy6bQXl+aTfweGAzWRphZbBLUD+EQo
 pBd5fUD+OUwfMFXPCibkfrcG8miUmMA/29aN/UtG3ADcd1laQ4JyyNzElOMxfH4DRP/0
 JSvzLpZSg0KmiPU4jiT5SjjXvt2deppiZ7QEC/bHxD3HNLSmOjgtvXr1+HuFJiFzqtTe
 NRMutrGgfuS2hw9lrP0Chy5d+tdNsTqQIomqNKajBCA7E2khiHyh/pSm1/AiSvtk/omm
 L+XrzXtFk1QUviNAnN7TvCXMY2Tc6Uf+el8RJyqHaFUVFYoFRJiZLLtnSjK+Oq28Imjr
 Izjg==
X-Gm-Message-State: APjAAAVoXz66u7zYJI+0rptyAjqhoqvJVHvt109xCeNvQ9//siZxNewT
 RfUtAhxWKx4ADqPFR9LRQmw=
X-Google-Smtp-Source: APXvYqzdp3XN79dEvm0MZLXBIVedJuFdkh7d2kpVj8CfmV3e1u1HgeNZbFWWexKAuQ/OCOh1KILWBQ==
X-Received: by 2002:a9d:7083:: with SMTP id l3mr524767otj.193.1581033964015;
 Thu, 06 Feb 2020 16:06:04 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n17sm433827otq.46.2020.02.06.16.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Feb 2020 16:06:03 -0800 (PST)
Subject: Re: [PATCH 2/2] nvme-rdma/nvme-tcp: Move err_work to nvme_reset_wq
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200206191342.10190-1-jsmart2021@gmail.com>
 <20200206191342.10190-3-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cff887f0-6206-0e99-cd11-addab0ce2aaa@grimberg.me>
Date: Thu, 6 Feb 2020 16:06:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200206191342.10190-3-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_160605_144703_ECA8B399 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Nigel Kirkland <nigel.kirkland@broadcom.com>, maxg@mellanox.com,
 mark.wunderlich@intel.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
