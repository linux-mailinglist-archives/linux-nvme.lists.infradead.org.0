Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4B1B54B2
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 08:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=bqrIXlMvbX3xMSJe/RBmbrapt
	BhcT+PJvPlgFTQLSNPRNzChnUZw2QkQDtd0teAKDhr303rUwl2pQNGGIewnpHSRwOpY6CxT1qX77F
	NbKsSJQDNxFsEYLgjhBFNbPNJgbiCn5GgNM0sYnaVGUT0cIxFZLej6tKW1tZoSI40GvkZYdNN3SYL
	0NA8em+eUauBRTcAF1TCJaCg6l745eNVOywmsao5yZM2SqdXnlXbrHiOnG1c7ktW63EHVe+rdYmE/
	W8Qf9EAZqkYYs9kTr6KrmyJkthmdNbylnbjfLFEEuMddDJAnVVcKp9BSiOkwkN9GOktJNfnSpsddt
	wnmfg/Mlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVKj-0004Gp-Ea; Thu, 23 Apr 2020 06:27:37 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVKd-0004G0-Vl
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 06:27:34 +0000
Received: by mail-pg1-f171.google.com with SMTP id g6so2405850pgs.9
 for <linux-nvme@lists.infradead.org>; Wed, 22 Apr 2020 23:27:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=qgp4ooaqeCh4bkqVQDEp9YdxNb6sn5cQNzzNX/tavM/2XvB0ilMykGz6jnRQGxctv/
 VrxIaB7NdN9igt0iaQxBTuXu6Y/at+LiPghI29qsEZdzXfQ/h9K0NSJ9gFJSKT4OM3d3
 LvmNV6Am8Z6h3PSOLBfOyjdclDEfAV51FDbyS2vCcwZV42kxD05faQFMYrXysoyDvZic
 uFhn57Xo+Xq7P0MmxXNyFbHjk0xcZ444i02GwEJ+vbtcF3V98tFcG8v9fn6uT2Y72T2F
 SAQGtIHCpS7q0wC3jdrndwWexiDf5JqG6kzMlQGGV7sNiKtVRH7pQnZc6URrkRglgKfw
 cDfg==
X-Gm-Message-State: AGi0PuZn0Ei4WpitK8OnWrKHHJvZKw5gPHSOrweN6lT255szTB6TLKBC
 iNeq/AWfcS/AKpeIyB6vqqrekyhi
X-Google-Smtp-Source: APiQypJT85g6nlh0hDJ7UvR5xSoUCCTNMi1lSMuv4q6DTi5iFxmS6zzmta465Wi1xELMfsu15xwqvg==
X-Received: by 2002:aa7:9258:: with SMTP id 24mr897747pfp.35.1587623249981;
 Wed, 22 Apr 2020 23:27:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:ec9f:3a3e:8aef:64e5?
 ([2601:647:4802:9070:ec9f:3a3e:8aef:64e5])
 by smtp.gmail.com with ESMTPSA id b13sm1501157pfo.67.2020.04.22.23.27.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 23:27:29 -0700 (PDT)
Subject: Re: [PATCH] nvme: clean up error handling in nvme_init_ns_head
To: Christoph Hellwig <hch@lst.de>, kbusch@kernel.org
References: <20200422080016.306205-1-hch@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fce0b91f-a696-90cf-b6e0-3ec4462899c3@grimberg.me>
Date: Wed, 22 Apr 2020 23:27:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200422080016.306205-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_232732_021847_CED9BF81 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
