Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2531A432C
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=UXlKPrgb6flLcKYp5PS+YrShs
	dDvC7+EP40x3PWoie9Qfy6qJcpFqsOCLO8dGhKMCNi3Mathi41T082DspjME6A05LmH/quAn8SNU1
	DYkjD7n67wfHa1mhYpQf4yP5njDQ96GD3XbI11fIu466vhjY+FxWL0kdb6FtUIZY3V+E5GBvnNP6h
	+adYiq+ayxK8xYldbWtcO5tvYsf9PGiS8Tf2XQKFqjWKhnxikGeeRdqUUmY+3WiDl4Qok8JMlO5sS
	xl7UzFEqyN0U82Tt1BqXbaO3tzTo3sN3t3hzEHbD1b1iV6tGiiPJ0U69FsUvcqYGZv51g0cAhSVN2
	90kIRuHRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMoOK-00069o-K9; Fri, 10 Apr 2020 07:47:56 +0000
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMoOF-00069M-BH
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:47:52 +0000
Received: by mail-wr1-f50.google.com with SMTP id h9so1360532wrc.8
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:47:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=gg3BErrpHeWQ1pGDE6WvqnFLLoBJi3IVeFje0LCUv5eh8Avagz6f5yVvLL5L3EdAfq
 chY10qvwz6mcKGygcz18jTyGvSSbQWwhA5GIlXmSr2bKfEi2upY3yNnzjy8WYC6hnRuy
 YfDG6Lzo0KHrXAQlWpY7zrNFZPrXhXbz4DkuHlh2gPmqLhhz5ekGTZWWe9kKVWEFecJb
 Q9gDCDewYbXMse7LIK0BNzTXxEJh15m0Rc0paTg8ASxj1PBOwc4gNa+qEyrL5baqUQdm
 vGyhX/dp8YPAJccRGzYu++Xos7Ie/dqBlS5PTi1WIUzmlK6rJ99ZuDBVypNzCal8gA5W
 gO5A==
X-Gm-Message-State: AGi0PuZQHc6GG3fE2HeUVWVJK1M63P86fbO4YGT0OX91d2vhrxuTJSH/
 b4sHHJnHpSPStMDG0Qjzov0=
X-Google-Smtp-Source: APiQypLRp1yYaKOAbSGdhd6oage96+EYVoUAJeTdEdQLnsn2My9kc9sUK2VrXUajWPjfn0loy+fazQ==
X-Received: by 2002:a5d:5224:: with SMTP id i4mr3270859wra.1.1586504869524;
 Fri, 10 Apr 2020 00:47:49 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id v131sm1778430wmb.19.2020.04.10.00.47.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:47:49 -0700 (PDT)
Subject: Re: [PATCH 07/10] nvme: revalidate after verifying identifiers
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-8-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <89fb3628-c67d-37fe-3ed6-29fc6741a37d@grimberg.me>
Date: Fri, 10 Apr 2020 00:47:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-8-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_004751_386666_433ECEB2 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
