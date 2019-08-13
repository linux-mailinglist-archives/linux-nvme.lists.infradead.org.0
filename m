Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FD78BED5
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 18:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=Qc/20Bp+Ito9cCmIHTzbIf43+
	Ha5r29gMqX2gigvAo/ZXo59Nu81hO6JFz/SsjBOSyRPylpRl1pWPqgkL9tJtP1gOFZ1iAFx+l2k+5
	gMdhUIadVQ/yK5CWxFW5Yi5Or3NDqhL0UE4d2PG361LbG6CUJT1Bylsg/TOdzXI7zzczBQurAI9/g
	ManWx4OjhP02oY2CL0DitaKwiIckkHSa83wI36gma1dba82MzWUvRRo+5fVrNJbFgoE+Sd39YEwAA
	XcV3hrRak5j7AXzXnK6C04BsYRJAsFk+RDXYfsrJXgXD4wGaZCe6ICs7WZJHz5/nuVsiJ/hKdGIKn
	F3OOLlqSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZrM-0000iv-82; Tue, 13 Aug 2019 16:41:20 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZr5-0000hV-UK
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 16:41:10 +0000
Received: by mail-ot1-f67.google.com with SMTP id b1so6838687otp.6
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=XkIYSAEzVZN9zYIbar0JHewb4/9FPzwv1VAT7DIl9YeawdMucfYrRUa8ZmzOU7M6DP
 0Zpy0HEBqznv2UBrUj/UnYIZ+pAWfSSnoSl7hW6zWbTG1ooJRfxpYOXO2UJ30nywcRrU
 MLrhN4iWczkUSVnp3vhAhQDM5S2keq+s6tqD2IAxTF/Vdo2acv/h6lxhw2YlVYxmuQPk
 jLEJb4HaEoDVFAFzDXA1xsctWB1oh99GMCMKIzvFQCcGotn1ksU92CRbD4XoAsQ2bc4U
 iZZsoJmegwo14gPt3cdwzEvxwwY5LpU8PIQS+1Fkz2PyUb4GrQwOEEdFUoZB/2a98Q7H
 k1Ww==
X-Gm-Message-State: APjAAAVU013zC1DExSLaWyvrGmhpmYtyJpW+/KW3Go1UQszQkO8X7jgp
 W5CA6yykm8eB58BMbnZldehSK3a+
X-Google-Smtp-Source: APXvYqwrlNjCzorW5vqZ5NNP1HzwWrO9Lt5HAmp4omEeVVv1KZDFlIC/0AytG+/ygwbfYgUdNse+/A==
X-Received: by 2002:a9d:4a3:: with SMTP id 32mr5095830otm.37.1565714462952;
 Tue, 13 Aug 2019 09:41:02 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id t18sm4476193otk.73.2019.08.13.09.41.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Aug 2019 09:41:02 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme-tcp: Use struct nvme_ctrl directly
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
 <1565702251-17198-5-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <3f9ddcd2-5df7-ddf2-6685-01015e15646a@grimberg.me>
Date: Tue, 13 Aug 2019 09:41:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565702251-17198-5-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_094103_988560_AF1FBE17 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
