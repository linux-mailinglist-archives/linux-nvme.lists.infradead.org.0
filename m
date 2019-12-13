Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B3C11EC52
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 21:57:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DJzBTxyotj4L88xnMcsEZUKQn+Lrt9u24W0gdo1Ttw8=; b=djaJd888xq6E9PfVgWrE0k2mr
	O8EtpTKMU+uamGXiLqMkMV3pvIxC+M+vAWZQ2wRrHwvJMrvSHqD2h5mTcWaLfkx+4FwylCjWGbGUt
	Fv9eeMrOiOkk7hVM2+5JkwSTo7R4FAr9dsPOzLeJLDOYGvpJM8AlMFa4OFaTZ9J25JP9N/Z4sLStd
	8U+UqyIyS0VeMNCnMH9DcqpUaZM6aQ8Aih1ONa5lBKMco0B0oco7cmf1Kz+p1DRJc0teYT523IIT6
	1E9Ghxp8KVfWvyPvq+ph1y+nBHUHuqnIE/h1TaYGTGq5vv+nQzy0jD6PoymeQ13dYX+xOMcURmrWa
	Od6ln1ubA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs08-0002vF-6a; Fri, 13 Dec 2019 20:57:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs03-0002ub-P5
 for linux-nvme@lists.infradead.org; Fri, 13 Dec 2019 20:57:25 +0000
Received: by mail-oi1-f194.google.com with SMTP id v140so1908804oie.0
 for <linux-nvme@lists.infradead.org>; Fri, 13 Dec 2019 12:57:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Jf/837oSh0CkTryg80qBtLRZ2mWIHAzxh7hJGnxEmyA=;
 b=REVLcmAy7XmFOHas+LRxk+J77hQXg302VppGa5Ie0JIyknYL/qa+1R/vbCF/HF3TwW
 OBu72+R4zKbSDDMBYchrekMTx4S10GQsvQkl5RLlVJBySArPZc9YWx0YYI2Cv7FbRfkI
 C9ZU/AVb5hM8YB643FmakNLcHf4wSHUc7K5emxJ03/qlyRBUXBWY8W0J+VgqPdf9cO3k
 jr/k/a6JP/11lnA360NTbjwLItuZV73z+4FBXxsef7L+1df9ryXbhsJlx/yq00YJjtYj
 XTtW/h17JCcJMUw6U0LdrWfdbP3SWFePK83xTICulMNfg7EiAsr9spYSHgJXc8k7B2T6
 2GPQ==
X-Gm-Message-State: APjAAAULiVbeDXuANhgEnQeuHy8i1GauUGsfiuWbb4JhEfrcG3FAMRLV
 onGQeVcKAU3XGg98nn7AYs4=
X-Google-Smtp-Source: APXvYqwbS0fvBVbVRPwbsA2XqbGwGBwk5M9zOCBl1o/skVv3Hcrr3DibOgqshdbMRygVm/VYnmbufw==
X-Received: by 2002:aca:1a10:: with SMTP id a16mr8185478oia.9.1576270642344;
 Fri, 13 Dec 2019 12:57:22 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id z91sm3744017ota.53.2019.12.13.12.57.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Dec 2019 12:57:21 -0800 (PST)
Subject: Re: [PATCH] nvme: fix REQ_NVME_MPATH retry logic
To: "Meneghini, John" <John.Meneghini@netapp.com>,
 Keith Busch <kbusch@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>, Hannes Reinecke <hare@suse.de>
References: <CA37C39A-183B-40FF-9033-DE0AC320E098@netapp.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <11a7a51c-43ee-b4e7-28dd-ec403de87365@grimberg.me>
Date: Fri, 13 Dec 2019 12:57:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA37C39A-183B-40FF-9033-DE0AC320E098@netapp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_125723_817323_0614CA2E 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> From: John Meneghini <johnm@netapp.com>
> 
>   - Make nvme_complete_rq error handling logic
>     equivalent between single and multipath controllers.

The commit message should explain what breaks and what this
is fixing.

>   - Non-multipathing related nvme errors will
>     be retried on the same controller.

Any specific reason why we shouldn't? Or in other words,
what is the harm of doing it if we have another path?

>   - Avoid gratuitous controller reset while
>     handling BLK_STS_IOERR when REQ_NVME_MPATH is set.

This should change nvme_failover_req, not change the behavior by not
calling it. Requires an explanation what is broken with the existing
behavior.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
