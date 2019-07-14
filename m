Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45EE67FF0
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 17:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IF94ZFNYeEqneNCGD+vz2IxLZraYvTeqLqSmrBUQdv4=; b=h49ItNEYr+O1rjVbN4yV7PrnO
	k9esKAYXorhGqx0og88uYnEcd/LCYURVbzu32IjDg6QxfER2ctLuhdL2fBnhHpDHO6LOFAQRCIAdA
	3W44kxsRRbrVfEDGefWm2BglCnUoD3+UnF2UYYuEQWyMEqNPPIzJPH4oM6bUt7lZzCaXNh76xj+Wb
	WAUjfe1k23F3WPDNQwz5GWF2WRtDY4DqJuTAz+wydNupbvDV4AGhj8p9vYrManK+HHwUV5PS0QFTT
	84ZFx8Zq1jPB9odT12eDR7FiGlc+RmSNq22Gp7/eQROW+dgnqmPlucqByuPg+A381Pqn2x+nx2jXm
	ZStY2MbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmggE-0006h7-CO; Sun, 14 Jul 2019 15:44:50 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmgg4-0006cW-8M
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 15:44:41 +0000
Received: by mail-pl1-f196.google.com with SMTP id w24so7072609plp.2
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 08:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VUhiJHxMlB21HmgsQaE2zQFC7PMObwVFp0+zo5bH0ho=;
 b=fjWJ/PR/OLXo1mkRuxd2eIDFSiIEZPO4adsQ5nA+sI84/lYTYMLAd9RvTek8EDY/AT
 N7XdpyJj+hFSdUwLQK2zd1PTO6DX5Bu/kE5ZP62yzamTRGP9YClkpA9qAa28m7sHbkMS
 h1rqAnPjs2GPFVTOvSP5H4xKfo/qb7h9zbtUsyUcfgVo6dX01hsWp0TqHe6d+Qa87eLX
 abThcck3UHWAYvWV8idjxZBAljdmqUJObnPfR4LT6m2Hn8lQnNl+AUbIPUv9MCZGGRP6
 y03F6yrzV7E5cqL6SEf57kapqGGHCG40nsNayxRMcbBjUCppjViwUTMBc4ZCa5SxRv/y
 GOqg==
X-Gm-Message-State: APjAAAWyAxw72NS4v55Oj5eu3NoQzoi/HiOAnbNZOKYp9usORKBX+Ksb
 pk3bhEBHwRV/cy0NvnH9CRxxbB7b
X-Google-Smtp-Source: APXvYqzkasegZK82laz/VDYFoklwReMEU+83Oi0XItlbcesacvME4+t9stfdsmUR4+yqAg2z15Z0oQ==
X-Received: by 2002:a17:902:968c:: with SMTP id
 n12mr24522050plp.59.1563119078829; 
 Sun, 14 Jul 2019 08:44:38 -0700 (PDT)
Received: from asus.site (c-73-241-217-19.hsd1.ca.comcast.net. [73.241.217.19])
 by smtp.gmail.com with ESMTPSA id c98sm14673089pje.1.2019.07.14.08.44.37
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 08:44:38 -0700 (PDT)
Subject: Re: [PATCH] nvme-vendor: fix c99 declarations in vendor plugins
To: Simon Schricker <sschricker@suse.de>, linux-nvme@lists.infradead.org
References: <20190712153457.13877-1-sschricker@suse.de>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <aa8f0b9d-3e71-ca01-bd55-b54bba94a710@acm.org>
Date: Sun, 14 Jul 2019 08:44:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712153457.13877-1-sschricker@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_084440_300449_AB31E3B9 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: keith.busch@intel.com, sagi@grimberg.me, hare@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/12/19 8:34 AM, Simon Schricker wrote:
> We can't use c99 declarations with older compilers.

It is very easy to introduce C99 declarations. Should -std=... be added 
to the compiler flags such that no new C99 declarations get introduced?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
