Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6132B64FAF
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 02:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Laea4PeLwpQxiWAQN1oUyKXXUy3Uv42wcNIntfBt2/Y=; b=uTY60Fw1nH1Lc4Z+RtUpQn0k8
	aYf30Kftk6mZB5248igHy19Ns8aXcWrjdw5RYzrcNGPXlOAS22w2fYH+01YhQwegwY+HI1XLU9N0Z
	f0w0yYgsiDe3zbzjkbBGxxBm4DN5hmkv+8FumwuFLX6mRuPwpM5CizxcKpPY5MLVwxnHVZb4QJ06u
	AdxmYy2BcUzwOrCRS0M5Pu+YDvhFPAYRvs58KRRqPn8PfPoZkGRmtWLZErh0roM5F45365E86fqwu
	abtPhRzIMreEhMjRvRoNI02rZKMgJ2R2/bKIy9YusKqqze1PXpyfb92Be6Lql7Qg2JXRo6qKGh5Uq
	1XLIA8EbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlNBr-0004kJ-Ka; Thu, 11 Jul 2019 00:44:03 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlNBg-0004g9-5S
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 00:43:53 +0000
Received: by mail-oi1-f196.google.com with SMTP id t76so3150585oih.4
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 17:43:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BwGeI/J+6oWoZcm6tJSEZ+nYCMbHeu76mVPoxLKi08o=;
 b=g74JEmnArw2rhgC8Wr8L7Ewi3TKzWJbwcVMCbJa5uL7W8SkDmfLGQB2JcTxkvtYbJu
 tul9AO5uOPPMFTqH5pXro5BXV/9b49mBtp9tXYf2TOju6JVc0k68wb3EyGA4ek4XHJQi
 n2d3mPRvtcRzIGtyN5ZrVzkP8+RK+G6DNnqO4jVH7EM40V3TPwbXh2udEZUi8ZzolnQx
 HKqMwjEd8ddNi5kRtyl0afJSE+6JzD/HNxbFNJhKbQALVQZVzW86HAG2oXmlQG7sobKW
 57ZUJA+5ILBsuvjWEoR7vhYXZr+b/6qVXBuiOPoM0h6M/rBbv5uQSpuctd9AluZxGpa0
 dxPQ==
X-Gm-Message-State: APjAAAWfzT/ebhpGwCW4AoXa9EWEXF7c3ncxc2+cUvm5e7KvMNkl7qxE
 lY/DoHzVP4VRfIEXWRe9lGLbmgE0
X-Google-Smtp-Source: APXvYqzsu96rzuyzXXkR/J/NsaqHOzK5tM8TLb1k83hablN+UHq9vT9lSHm3MJTQTa8yxYV4WP5AKQ==
X-Received: by 2002:a05:6808:118:: with SMTP id
 b24mr760554oie.128.1562805831125; 
 Wed, 10 Jul 2019 17:43:51 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v65sm1404252oig.51.2019.07.10.17.43.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 17:43:50 -0700 (PDT)
Subject: Re: [PATCH rfc 4/6] nvme-cli: expand --device argument processing
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-5-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f8576e9c-0a92-41fa-84c0-03a985b41253@grimberg.me>
Date: Wed, 10 Jul 2019 17:43:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710232740.26734-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_174352_207507_7FEF8FBB 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> The connect-all --device argument was used to specify a specific device
> to be used as the discovery controller. The device is typically a
> long-lived discovery controller that posted a discovery event.
> No attempt was made to ensure the device is who it is supposed to be
> before using it.
> 
> Revised the code to use the other arguments in the connect-all request
> to validate that the device is the entity that was expected. If the
> device doesn't match, the cli will look for an existing matching device
> (will be a discovery controller due to nqn) with the same connect
> parameters and use it.  If one is not found on the system, a new
> discovery controller will be created for the connect-all request.

This can really use some splitting up, not easy to review this patch...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
