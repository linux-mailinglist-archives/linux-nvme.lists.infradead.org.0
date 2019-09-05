Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E6AACC7
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KEA2wQi7DMOX+L6CeoccEMZUHk+n6Rhx52tpwGBK5/I=; b=qycBxpdOm27tmyyN42KRVGczO
	D0gm01+xziRv5kzvWEVXqKHhLgLkjCGSg3QMWRNlJOD3GQsbpx/1a09Mr8qyChK8D+G9cKjs5sC8i
	qSZbiF0zksoY8yqd1U+/tG6HAGOJaMjCQ6gohXZIVGikE9QSsCHx+YPS2y7ofEE+GNpoYmg9Ge2PN
	0qvz+8966azc6/zqby7B9yRD0EuNPvKTX7Fat/FkF4n/ERlWi1O0IdzelIOrCmDmdBSs/zZiN6xX8
	8mca7/wSfeled6vlta+IqWj53FI4QqzeI7huQvNuntM5rFhPgiSBhfFv3MPZ5Co+FN6Wqzj1/peKZ
	g4vXzCuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5y3R-0003VD-Ix; Thu, 05 Sep 2019 20:08:29 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5y3L-0003Uq-Be
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:08:24 +0000
Received: by mail-wr1-f67.google.com with SMTP id i1so3606481wro.4
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oDQd0yOPor5unni+Sb4w/dmOSHcgSnwj76Rfg75eKmE=;
 b=GyiHR1u9BfKQosWmvZtWQCtAeRDMZ+20yk8/yMDxmWXwPyLpMI9n4qL+hFdICqxAiF
 pHZ1MkimCEezfub8st+upd5YG3E/pv1AHg51xg4cuERfyC7O6TA3ONk5OBX3LWb4tPBS
 AznqYT0OThYKak3yBi9+5wjjK7CkCya3NBtON0+gCNhiFQt1WYI2IaE9vkKZfq4rhcck
 7KvWXQ5bKSF9GV8QXBpaGTKhy1jXbhV8T78DKNZf06wRDSkr+lcV9qoNw9ESg0nALtFQ
 uAwoJWfbBKLRma4tSCd5u3kbU5BHtvwc1U+PRdEVmWpF9fHQ+1GAJiWZ94J1V/Go35u1
 nqUA==
X-Gm-Message-State: APjAAAVyGhyrr4DTOidNFJNgI1ceRDcrWECIwfPs8vHV8CX7RS3dLqSK
 /xuFigkAUdVfM0Vfworpnag=
X-Google-Smtp-Source: APXvYqzU4R0fbCHKKo4RD9DiZtFujZnWb8eLxfnYawKAlU6DmOp66kEL4WfaqTF0E9CYgk1CFKQ5qQ==
X-Received: by 2002:a5d:4405:: with SMTP id z5mr4139241wrq.158.1567714101692; 
 Thu, 05 Sep 2019 13:08:21 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id p4sm2047329wrs.6.2019.09.05.13.08.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:08:20 -0700 (PDT)
Subject: Re: [PATCH V2] nvme: Remove redundant assignment of cq vector
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1567698066-29168-1-git-send-email-israelr@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <17a246f8-8c9d-d37a-4e6b-6eff8d4f3962@grimberg.me>
Date: Thu, 5 Sep 2019 13:08:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567698066-29168-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_130823_398373_857514A8 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

I want a formal review from Keith to apply to nvme-5.4.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
