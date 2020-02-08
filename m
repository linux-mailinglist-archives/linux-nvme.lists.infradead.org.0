Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7769156230
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Feb 2020 02:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vL7/fzfgQT9rLS5UCNqsQrmx2Rxb/1lZyy34wZ5f6Fc=; b=O25cksOQgd3QXsVUyUkvgNTQ8
	cQ84S80rlrxToApcMjQTmVpdbtpw9qFJuBo5wh+Br/BklHrqE8N9mxSNH7Ldw0IGObCSYAwXXtupc
	c7ujq3Yqz0GBPS3b1nfOpNYUTXq+bOYNp4Y1K8Pl+3LOQiOx+IXQdAOplnr05ddS3YqCoHI9UejTr
	J36HO4IBM3yBTk74YIWNcqLvyGWFdDSEN67tJAK+WoJMMlBxG+dOxdNocLagl5Rn7s0mLHcpMN8Q3
	Xvuo+Ny/aQqmE28+TILzj/2dbT07oz0AEJ/3JZf2nOne7uuU3BLAeDat5iosOo+89RwQjaoLao5p+
	wfOCQf84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0EYg-00024x-W5; Sat, 08 Feb 2020 01:05:18 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0EYb-00024c-Uf
 for linux-nvme@lists.infradead.org; Sat, 08 Feb 2020 01:05:15 +0000
Received: by mail-oi1-f196.google.com with SMTP id v19so3829856oic.12
 for <linux-nvme@lists.infradead.org>; Fri, 07 Feb 2020 17:05:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h4WLgv/KFL48xGRti2JF/TtCs/37Y8Ax7P6gxmVykI0=;
 b=RwwadEItClcvU/kvcXTLXu5h8rIs/Q/vLNuYg4jOEFOVTK7nYLPAGgszZCMtJDkM5W
 EH3u/8wbzmNshYWMd+ii+Ui4DE4ghCPEo7eLitzwLblJo8WPrBOCAaDvBoxW87PjZTED
 zx16FywxoQA4c+rRNpS3XcDo56lb1BwGVpLdT4ZUNmrP6+rz49uldh4jfINqngPEWefQ
 c4yNukKZQWPG/Mg/Jv3M9nAqZ5vd8+O1IAr/ip7HV9newlxumnBB5atJHP0rE4YIj5cV
 hY+JIX+w599vEri/JZ8PFjdmjWpwHrtpXXNJJjy2iMl6bvu93lZrQcYGeMI7DPrqoFvj
 9DkA==
X-Gm-Message-State: APjAAAWZ3sNRaZDNW/ZHrhImdGsApsTsI3HJiKLc2iNxEnUlhnLt85ea
 RDnspXbzGGIclIvuYLjZUgTtqGDP
X-Google-Smtp-Source: APXvYqzhpp72e5ItV4u02eVcVZy6GUcm6LNEvCk+Kw8Vl+iao4loNCk7muMw9F3f/yyekyZj3ummUQ==
X-Received: by 2002:aca:5106:: with SMTP id f6mr3780336oib.112.1581123911328; 
 Fri, 07 Feb 2020 17:05:11 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t9sm1707415otm.76.2020.02.07.17.05.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Feb 2020 17:05:10 -0800 (PST)
Subject: Re: [PATCH 1/2] nvme: expose hostnqn via sysfs for fabrics controllers
To: Keith Busch <kbusch@kernel.org>
References: <20200208002111.10220-1-sagi@grimberg.me>
 <20200208004457.GA15482@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0ffaa081-8e61-9e86-6d7c-7baa32d58d25@grimberg.me>
Date: Fri, 7 Feb 2020 17:05:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200208004457.GA15482@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_170513_988200_A499E0F8 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> 
> The code looks fine, but could you say more in the change log why this
> is needed now?

Well, its useful information to have, but I can add a few words on why
that is.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
