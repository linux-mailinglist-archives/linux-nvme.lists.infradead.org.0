Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578B81CB8CE
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 22:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=orb/GNfT1sZ+RbD5J82hGkG0WDXuaFuJpd+UX82xz/M=; b=cvTpVqOGW9cjQWczBKarBz8GF
	Mvb+AklDWspCBYQZ9kugzzCXXtFrjVoo3t5x6CI3JCbvUu3fVTE7rqV6tRxVVg5s5A7id/PmTXh9I
	ZP8oAN9f3bNaTNUe/gNTS2gHOgBTfNEnK8LkrXDUp2JlOZA2R6vc2AY4jxLCOtyEM7I7Ubgg0NTLC
	Wqgl2u6yqAIksz1YdXjY8Vi9ZBrz1F2PwWucLIo7C4FA2EJcSkC7xD1aGiSkbk6WmXsxyqOK0qnTi
	hIOYlKHYqTAelAxvT5qI15ilR9dOqaVXY6VdAiRtNIDndPPuM+m0r3DjU/h2fOyqfBwf47oEJN5Hx
	aWmoXHDYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX9Mf-000582-Nu; Fri, 08 May 2020 20:12:57 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX9Mb-00057X-Qy
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 20:12:55 +0000
Received: by mail-pl1-f196.google.com with SMTP id t7so1221193plr.0
 for <linux-nvme@lists.infradead.org>; Fri, 08 May 2020 13:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6SRe/yASNzVcHeUTX7RGNicVJss864tWsTBoQgkbFb4=;
 b=hneN1NmE3/sraVp/liNPKJcOYrS5sj5OhzQLDT7+3FL2KnIDpqKuH8O3xMR6gx2tAy
 U+T90TDWLs5v8WWneOz6fI6ehnwMXa6eAMw1+J46zGsXte9/RdIsO9UeF1BERWJ+dHzu
 bbnBMC8LuHt5h20vs+8S7XsBEf9BHodUp3B6nkSmWGRXJHS5ISG+uCzfgNu+Zx9M4uZK
 W9WSLylkoNmsP3YE1M3su5UtlEpFPFbEkq+78x99dsD9kDcvufbUmxmaHFCyewcCgMxc
 PNUuIis/4ZwM8uQOf9AkHgZy/WuA5139mCGvgKUtNxj56jVPVeEOB0UUkF4fLT3PAR4w
 n/dA==
X-Gm-Message-State: AGi0PubCrMjqRcs/f40KKYi1rzPzaTvkPWtxy8nW55Xs/ssRQRPzY0Gc
 7k7AmTPB8vOcGNd8N7dI0Yw=
X-Google-Smtp-Source: APiQypLTZyGm9NNVea7dNnoV/BIqQ5KIbqtvkYSoL2nzEaWnlcLtZI+Vp10rr3ETlY3aHdEYzmDX5Q==
X-Received: by 2002:a17:90a:eac5:: with SMTP id
 ev5mr8223349pjb.173.1588968772522; 
 Fri, 08 May 2020 13:12:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:bc73:49fb:3114:443?
 ([2601:647:4802:9070:bc73:49fb:3114:443])
 by smtp.gmail.com with ESMTPSA id d7sm2052353pfa.63.2020.05.08.13.12.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 13:12:51 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: dma read memory barrier for completions
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200508200406.2814437-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <34740788-df94-d2e0-fa63-5568e379cdd9@grimberg.me>
Date: Fri, 8 May 2020 13:12:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200508200406.2814437-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_131253_872245_3E717B56 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
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
Cc: John Garry <john.garry@huawei.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Control dependencies do not guarantee load order across the condition,
> allowing a CPU to predict and speculate memory reads.
> 
> Commit 324b494c2862 inlined verifying a new completion with its

I think we need a "Fixes" tag to get it into stable 5.6.y right?

Otherwise,
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
