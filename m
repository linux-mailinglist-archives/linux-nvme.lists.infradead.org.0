Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E2F9A3EA
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 01:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qyiqtG3iIcfnVXT3iH9InIun+a1W8XvRH98ZU75BQlc=; b=m0SsdBpJsx07nELBkJqxEZjje
	Y+z/0/qEDtpuWtxLH8AJ9p53NuUH4w5dpLmv+/8pxCdesIi3dimcSyY78PEZehsiVBaWap+kzv0rM
	LmXYPCSMRXGL2RCs1XsnYN/k5lWelg/GmmoU3upiI/Z1FhPpROij9bds6bH8M96EDFtT5TkNdJPGB
	glC+FDpMrfD9ZGrlGKsYGJEPPw5jWzhfvk/tiKyTThXPYXYK7/MaMLN+tZKgNgWN0ZmOKCbuUSg/M
	Rmx/SJCC/DJ1GLJvnStfMeNQG6XvDyDnltDngmdkfKpgRr2ZB72R3MEXH23XFV8CFjQJ9O+RdLLgx
	2aVXWVjGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wen-0004Ko-UV; Thu, 22 Aug 2019 23:38:18 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0wej-0004KR-Db
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 23:38:14 +0000
Received: by mail-ot1-f41.google.com with SMTP id z17so7083495otk.13
 for <linux-nvme@lists.infradead.org>; Thu, 22 Aug 2019 16:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ScgE8GLP1+yHpDfbBWeipulvi1ZJxXkB+ImuUP+uitk=;
 b=pbJ6Nr3P6Xs1B5xibSGGcEihs6vOYy2G/BxeAS6YgGcY7AGTb3hzjyBHRhP21O2QiC
 ya5eFhcGZQt5zdpSUrcnJyHgs18s3HBTrDdhlFvwdUCrpHIfZ5SbKKHthcG+Mj9HdBU7
 CNFBxlc+424Y9oFMOI3rbOIhBQz9iLNWjiOwEFrhb3x4iz8gXlodWTsLwn7Z5yZH687l
 bSjOHcnW90nBLR1ftGxpvV8wcTefFWc65O7FAYSu3QOQlBWReDPHAdy3LzcLU5WQXyTf
 EMBmzRYs55KBVLg9X2kD8ujXMMfz5iNm0nX1kK54lCaKKzdZcPJPXUErbOy3uXaWKyji
 7RMg==
X-Gm-Message-State: APjAAAU+RIMSBQr+C63T+P5QR5hjLIu8MQk4oLd9rqK4nhe92Z6Dz/Of
 5F1foFaCZgvwDlgbxdcgV+8=
X-Google-Smtp-Source: APXvYqxbBZHj0wInuIzvCHMLm/uitxbx4SjgH7zhUtWTXrlfonSXk4ddllIi/3AAfGLt1f1cGKVjew==
X-Received: by 2002:a9d:1288:: with SMTP id g8mr1807568otg.306.1566517091621; 
 Thu, 22 Aug 2019 16:38:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n32sm25225otn.61.2019.08.22.16.38.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 16:38:10 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: make all fabrics command run on a separate
 request queue
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
References: <20190822232721.25890-1-sagi@grimberg.me>
Message-ID: <a4a87c29-833f-db4d-4a5d-c335c0c74baf@grimberg.me>
Date: Thu, 22 Aug 2019 16:38:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822232721.25890-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_163813_460989_3E010926 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

wrong patch, disregard....

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
