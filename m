Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B442E0CC2
	for <lists+linux-nvme@lfdr.de>; Tue, 22 Oct 2019 21:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=us1CZR55p7m2UXuWemTM/NEiW
	kIoWcIobgBzy62hZqUkmM0QYYnUl9O6kXEaQxrzeBu/7mRHrMfojYQQ410/EZxB3aj8NDBcEvibDe
	pxQnZvZZVJ6AUIMwCnQ592oVcaNjah9WbMFUwSD1kt+mugUlULsV5lsIKiMxt3hFmUvtJeg1+diVD
	F3w02iyrI4OZNHfkUy1EN33D3gt74KCbZtyJHz3o+0Q/6UKKdY6VdmfkfCNQQFtocMGoOswzhuAXy
	NdwOMpceDygggP56gC53xgtjJE5QnY8EMxIlHOdBKH97DPSVh9aMLFxNm9EocFzz5X2FRNd3xZHBJ
	XjHkU/v4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN09I-0000Wn-CH; Tue, 22 Oct 2019 19:48:56 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN09B-0000Vx-40
 for linux-nvme@lists.infradead.org; Tue, 22 Oct 2019 19:48:51 +0000
Received: by mail-wr1-f44.google.com with SMTP id v9so8149671wrq.5
 for <linux-nvme@lists.infradead.org>; Tue, 22 Oct 2019 12:48:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=PN+WYB5s4sXFX/WcjiwLMAHsTzRprBrAsa7KV0EiP1oZY5ayP/g8fM+1kvjMiKlVFp
 ZA+Bz8YHhi7HVFCIbtT5H9VWLMeT43M9/Z3uCNVDJ4U9297T+BsJgBEEBtNxznJMcjLX
 KNQLjc94DV9iiSGYyzNIrgPWnb6+yauiyaymRjbU209Oj4YPaVInn44v2Tv/So3i0hoU
 hllOB64wPBgrYvHC2QPu5bsqQSWiOG+fW4nn4kMactug9ZF9HCUGnZ3lN4x3ualan1Lj
 Z54mJHNXrBf5oZgFDEOFz7wcRlMsfPHxuN8iYfXa+sSKvvD6sh2u+hULqYRSKpXDzL6v
 Z0fw==
X-Gm-Message-State: APjAAAUtgoLZVBken4/xjQgTELXu+/vOYtUSe0zHbQjxlFNnYlFxoNOI
 f9sUYPQPPFOAhMrsXR350QY=
X-Google-Smtp-Source: APXvYqz1Rsl5QXbCHRtvKJrwqB7noopdhzbImov7Vm7RP8zgt9fv4HPMxeeTnajKmbcgYI8ku/k53w==
X-Received: by 2002:adf:dc44:: with SMTP id m4mr3497898wrj.203.1571773726742; 
 Tue, 22 Oct 2019 12:48:46 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o187sm7472889wmo.3.2019.10.22.12.48.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 12:48:45 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvme-multipath: remove unused groups_only mode in
 ana log
To: Anton Eidelman <anton@lightbitslabs.com>, linux-nvme@lists.infradead.org, 
 hch@lst.de, keith.busch@intel.com, hare@suse.de
References: <20191018091016.GA25478@lst.de>
 <20191018183251.501-1-anton@lightbitslabs.com>
 <20191018183251.501-2-anton@lightbitslabs.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1883af58-814e-8aef-a8ca-681b0eca371a@grimberg.me>
Date: Tue, 22 Oct 2019 12:48:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018183251.501-2-anton@lightbitslabs.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_124850_291753_CCD00C97 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
