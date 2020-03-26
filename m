Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB03194685
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 19:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:To:Subject:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JE3tXYsba+4l1s0O6MdL1nlB+bbPEio72BP2jAy95eg=; b=oP05wcSsRwORkA
	/UBgT9sDbHPOhwhzQCjiOgu6hO7dV5rAtzDmkH59lYd4N+YhvgtgnAIJHvGs+XAQAVoqHA5Jt2uZf
	SOACg6H7VEWcyN3r2J2sO7L5Ipq4Mt+i/NiAJirYMxbeZswXQ66mfENEVUJK1naJdMXxgzRXXC9g1
	t4zQBWpZmC8aJ+ZNwZT1TzXME4le1JGY1uricOF+gXK0Iu9ffIFAg32/UYtj9DpwADukK0yaTcQF5
	nXLU+OtE1aMFCM8n26iRsLbmejxlukEkvMi0oES1C8TXeR8Av31BsM7Lj8Ly9SgjVz1sdaMqFxXnC
	S3aW1OTan82fxMZMa5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHXHD-0000W3-49; Thu, 26 Mar 2020 18:30:47 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXH8-0000VL-LV
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 18:30:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585247441;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qJQIm7kuwWz3O6s7sbORQr0I6PvqeKLlxetgGC3HAxA=;
 b=ejI/ZFNpXFWmj3vSgZSo0aLp2a393fXRXo5ums7kZ2LG9iZFVWnSIX/6FpVpEaXi00hkp2
 r5oDovEV40uSmecXXX+5hEWCdhVLV319Rns+CAMk5fEgFValGy/4gWaBhm8IXQiZx8yBl2
 lGexrMDprX772//2+fnVPkfn2XOK0KE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-czqNmJ_8Nsu2IY99tSy5QA-1; Thu, 26 Mar 2020 14:30:40 -0400
X-MC-Unique: czqNmJ_8Nsu2IY99tSy5QA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D58B107ACCA
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:30:39 +0000 (UTC)
Received: from [10.3.128.7] (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B0D5D5C1BA
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 18:30:38 +0000 (UTC)
Subject: Re: nvmetcli: Unable to run clear/restore
To: linux-nvme@lists.infradead.org
References: <7fdaeb65-0cad-8f9a-10e7-ae0c50494bf3@redhat.com>
From: Tony Asleson <tasleson@redhat.com>
Organization: Red Hat
Message-ID: <9972a646-2618-5fcc-b18c-6765516f65a4@redhat.com>
Date: Thu, 26 Mar 2020 13:30:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <7fdaeb65-0cad-8f9a-10e7-ae0c50494bf3@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_113042_786592_05BFBD54 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: tasleson@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 3/20/20 3:50 PM, Tony Asleson wrote:
> While experimenting with nvmetcli I'm unable to run clear or restore.
> 
> Using master branch against Fedora 31, 5.5.9-200.fc31.x86_64
> 
> # ./nvmetcli clear
> Traceback (most recent call last):
>   File "./nvmetcli", line 740, in <module>
>     main()
>   File "./nvmetcli", line 722, in main
>     funcs[sys.argv[1]](savefile)
>   File "./nvmetcli", line 689, in clear
>     nvme.Root().clear_existing()
>   File "/root/projects/nvmetcli/nvmet/nvme.py", line 315, in clear_existing
>     p.delete()
>   File "/root/projects/nvmetcli/nvmet/nvme.py", line 677, in delete
>     a.delete()
>   File "/root/projects/nvmetcli/nvmet/nvme.py", line 200, in delete
>     os.rmdir(self.path)
> PermissionError: [Errno 1] Operation not permitted:
> '/sys/kernel/config/nvmet/ports/0/ana_groups/1'

Apparently if I simply do

# rmdir /sys/kernel/config/nvmet/ports/1

The port and associated ana group gets removed and the usage count for
the kernel module nvmet goes to zero.

Is the bug that we are trying to remove
/sys/kernel/config/nvmet/ports/0/ana_groups/1 in userspace from nvmetcli
which can simply be corrected with

diff --git a/nvmet/nvme.py b/nvmet/nvme.py
index 089bafb..a2565e4 100644
--- a/nvmet/nvme.py
+++ b/nvmet/nvme.py
@@ -686,8 +686,6 @@ class Port(CFSNode):
         self._check_self()
         for s in self.subsystems:
             self.remove_subsystem(s)
-        for a in self.ana_groups:
-            a.delete()


or that we should be able to remove it and can't, thus the issue is in
the kernel?

Thanks,
Tony


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
