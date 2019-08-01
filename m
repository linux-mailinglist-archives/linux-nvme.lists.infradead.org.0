Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9177E500
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 23:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PaYQNvIoQlQ/JFDbjfzdmviTioAA/qqAjJsLZ9irgpQ=; b=XKIaSzdR95tnsHqOLu9k4Prv2
	uQU8W3b1Dh8lbeWY75rE9SDqgWav1n5SNytlurigWlwU+i8XtrzobXszJY1dcLtvpFiRnnzR7/3+W
	7k8GVPdvLJW0gbsZACvr8D9fvmXJ9e3ezgRmIoBfKwyjpEB0RudAqClGgBtXZmnpJfgYNS7bFEPc/
	Lhs852lhTY1Ife5t52mzmarXri2blUkqHIY4re0OnCrC1ybFTj36K6HOCXTvGjJxRWkPuTdaw6lSL
	jBsGRb8EBIO0Yopr8JnqD0un93lXdc3yXSPjTJdpkz1OtNc7CGOLlrH4iH1EokvkUXSrJVA3uJk7s
	gP7zCn3pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htJ0G-0005pt-4R; Thu, 01 Aug 2019 21:52:52 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htJ0B-0005pA-Ul
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 21:52:49 +0000
Received: by mail-ot1-f66.google.com with SMTP id j11so18657577otp.10
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 14:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y4b+VEZKlxmyCSz/dPBN4RbhumR5Z/VraCDJJL9Lkw0=;
 b=Gd06WtFFdN0+9MMwITJr4zerSwtxt4TXgM9Pv4sMQuMuSITIM4/ltLsh2aU92HVGqY
 4qW+VvixxY4qZQFOsH0nauPnF+5dLjktBvMZvfUFUUbmYrCVXFh4rNBI9pO5tcwaBl8F
 7DjlzpfQVZM5CASLMd1MsWXRpKXIMIrETE88okS9WiPxt6NGF1yqQGSzr+viy63TVH8W
 MpYQqFSddN2qtnKIGzk7PpETZKhVsyY/mULSEtyqtCZwaWSWYh0/ZzZgf0QJDtZvAx0u
 cAfPJP9YIj13kksssaGXHo3xWLiLGZG23GzHpxIkmvGfKLhuxMDnPeW8O8c1rDwk+v0g
 +o1w==
X-Gm-Message-State: APjAAAULnDlZZTmMx3LArls7Jbt/TcLxHy3n7lyPzkW33FRRYx6t/CxQ
 fu44US1N/ph2g426RO/3TyA=
X-Google-Smtp-Source: APXvYqy4iRtbPQkQcS8rjIFOQ3lMcIfeHampUxCZ0Duok03IoTu1L24xIpByazkQeawYimoulR6zkQ==
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr28397941otp.6.1564696362857; 
 Thu, 01 Aug 2019 14:52:42 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id g93sm27420749otb.39.2019.08.01.14.52.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 14:52:42 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
To: Keith Busch <kbusch@kernel.org>, Hannes Reinecke <hare@suse.de>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
 <20190801213600.GG15795@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8c71f313-4543-f581-af96-84070b8dbe5e@grimberg.me>
Date: Thu, 1 Aug 2019 14:52:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801213600.GG15795@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_145247_992902_F2190859 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> nvme_ns_remove() will only remove the namespaces from the list at
>> the very last step, so we might run into situations where we iterate
>> over namespaces which are about to be deleted.
>> To avoid crashes we should be skipping all namespaces with the
>> NVME_NS_REMOVING flag set.
> 
> This all looks to be racing with whatever task is going to call
> nvme_ns_remove().
> 
> Could we instead move these invalid namespaces off the ctrl->namespaces
> list prior to calling nvme_ns_remove(), and while holding the write
> lock? That way nothing can iterate the namespaces that we're deleting.
> We already do that in some places, so that looks like it may be the safe
> way to do this.

This is exactly what I proposed in:
[PATCH rfc 2/2] nvme: fix possible use-after-free condition when 
controller reset is racing namespace scanning

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
