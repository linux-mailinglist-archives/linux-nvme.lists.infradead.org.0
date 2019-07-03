Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD32E5EFC3
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 01:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=tDTz4xqZ/BhZ4Nz/ipl+SeMiZ
	xjh6XvJFdhntCD2r12GMEZEHDWdDRgDg4ubqu77UfhrNuDNq5YdzkiqjoHwTeBVDzEUPEiaQZaDwK
	l3cFzap67QBJsxRgsqS1C+mFfCp9ZTrhEOKsr+QsO920kAReDlx787/gVdfauXFx+5LPUtZokYRpf
	5TdNSJFlhCZ7wfk5ZvfpmQ3lxWGeh5NLyTe8wUrIz3FHaRY+IkzDx7fCM7Zjw9kNbhd86q0q+OqNl
	8Wtxv0ZNaQ0ZbS/jsC2zXR+VA/r7gzNOG4ub4Rb5n/A6S3NUpyeSgmwWza+W+9n2lG1ZzlijvSuS/
	edzIk49Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hip0P-0007YF-LQ; Wed, 03 Jul 2019 23:49:42 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hip0I-0007XY-9P
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 23:49:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id z23so4181638ote.13
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 16:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=n3WK+8gmhdpoPD02tVa706UjqX5gnN3yU5HT03hLWKNGLezbGlmq+rG+q1PtBIiVF3
 Mfw/5ZJ9ueDXeGNJjGIHFVBgno1bnVOSl0ocqWtoi8kFWSyD7ITcHpMP8t7RAvoY02mC
 IbV7Y25tlEc79piZ2An860n3zRTf4hCVBAWTs4hD5dZfBRCoR42R3rGWunsu3j5CNDnw
 0SvGgZD4bs2p+VPMeKS+K/FbUHJL5wS4q3ZRlMhnBaCL5WRGKJljIIRk9/pepNc/wNAN
 hXM964rGGQNbl3olTwBCknWZwFSUAZ0Qzx+O2WGQZUIGU4DL+q2yo7nDy+zhAGOfERk+
 ijXA==
X-Gm-Message-State: APjAAAX4XGE7SSGU/2MBhmAkB5uW1jSNbyuD2dKg5oW4QQNaJLvNhNu8
 0aNM4fSUIzyIQ6ybDiiYOHA=
X-Google-Smtp-Source: APXvYqxEbFi5posAe2vKH3wHGzt+E6AjNnOUpt4KA77N6dTLlE/YyRtTIGKg7Wa3P92Zgd5G0pxitg==
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr32303635oth.334.1562197772109; 
 Wed, 03 Jul 2019 16:49:32 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n106sm1409132ota.31.2019.07.03.16.49.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 16:49:31 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvmet: Fix use-after-free bug when a port is
 removed
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-2-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <87f99bda-3e94-2d49-2ef1-4537433c5e3f@grimberg.me>
Date: Wed, 3 Jul 2019 16:49:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703230304.22905-2-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_164934_332149_754A38DE 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
